module Definite
  class Connection

    def self.establish_connection
      database_yml = "config/database.yml"
      connection_properties = {}
      if File.exists? database_yml
        puts "Reading #{database_yml}"
        connection_properties = YAML.load_file(database_yml)
      else
        puts "Cannot find #{database_yml}"
      end
      puts "establishing connection as per #{connection_properties.inspect}"
      puts ActiveRecord::Base.establish_connection connection_properties
    end
  end
end
