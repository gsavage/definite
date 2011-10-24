class TableDefinition

  def self.definition(table_name)
    tables[table_name]
  end

  def self.tables
    @@tables ||= {}
  end

  def self.define(table_name, options={}, &block)
    puts "Found definition for table #{table_name}"

    @table = TableDefinition.new(table_name.to_s)
    @table.instance_eval(&block)

    tables[table_name.to_s] = @table
  end

  def all
    tables.values
  end

  def column column_name, datatype, options={}
    puts "column #{column_name}"
  end

  def columns column_names
    puts "columns #{column_names}"
  end

end
