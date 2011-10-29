module Definite
  class Dumper
    def self.dump table_or_tables
      require 'definite/connection'
      Definite::Connection.establish_connection

      tables = ActiveRecord::Base.connection.tables
      puts tables.inspect
      puts `pwd`
    end
  end
end

