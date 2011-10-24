def tables_for_testing
  {
    :books => "create table books(id int, title varchar(100));"
  }
end

def create_table table_name
  create_table_statement = tables_for_testing[table_name.to_sym]
  if create_table_statement.nil?
    raise "Looks like you are trying to create a table in SQLite3 (in a Given statement?) but you have not yet added the table to the list of table definitions"
  else
    @db.execute(create_table_statement)
  end
end
