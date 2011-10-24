require 'thor'
require 'definite'
module Definite
  class CLI < Thor

    desc "read FILE or DIRECTORY", "Reads one or more definition files, to check syntax"
    def read file_or_directories
      Definite::Reader.read file_or_directories
    end

    desc "dump TABLE to file", "Dumps one or more tables to files in the db/tables folder"
    def dump table_or_tables
      Definite::Reader.dump table_or_tables
    end

  end
end
