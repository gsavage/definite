# Definite

Definite takes a textual description of database tables and updates your database to match.

## Motivation

When maintaining a large Rails project, with new features being added on multiple branches, standard ActiveRecord migrations can get in the way; switching branches with uncommitted migrations can leave you in a state where you can't run rake db:migrate or rake db:rollback or any similar commands.

Definite overcomes this limitation by taking a different approach.  Now you only need to define what your database should look like; focus on the end-goal, rather than the migration.  When you run Definite, it will compare your database with your description of the database, and do the migrations automatically for you.

## Is it safe?

Until we reach v1.0.0 you should consider this as experimental, and should understand that using this Gem might cause data-loss.  It might drop tables, and do other destructive work.  Please be careful.

Once we reach v1.0.0, it's hoped that it will be safe

## User guide

### Description files

Within a standard Rails project, the description files should be placed in a `db/tables` folder, within `RAILS_ROOT`.

You can arrange your files as you like, but the best approach is to have one file per database table, named `table_name.table`

An example table definition looks like this:

    TableDefinition.define :users do

      column :username, :string, :default => nil
      column :password, :string

      columns :timestamps

    end

The call to `TableDefinition.define` starts the definition.  The single argument is the name of the table, which can be a string or a symbol.  The block passed in should consist of `column` statements, which are broadly similar to an `add_column` call within an ActiveRecord migration.

### Running Definite

The `definite` executable takes a number of arguments:

- *definite read filename* - Reads the filename table definition to check that it is a valid file.  This operation does not change your database at all.

- *definite read filepath* - Reads the all the `.table` files in the filepath, recursively.  Directory structure does not imply a namespace.  Files are checked for validity.  This operation does not change your database at all.


