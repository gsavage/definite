require 'thor'
require 'definite'
module Definite
  class CLI < Thor

    desc "read FILE or DIRECTORY", "Reads one or more definition files, to check syntax"
    def read file_or_directories
      Definite::Reader.read file_or_directories
    end

  end
end
