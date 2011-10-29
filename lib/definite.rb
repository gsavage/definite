require "definite/version"
require "definite/reader"
require "definite/dumper"
require "definite/model/table_definition"

require "active_record"

module Definite
  # Your code goes here...

  def update
    target_schema = Definite::Reader.read
    current_schema = Definite::Dumper.read
    changes = Definite::Changes.difference :new_schema => new_schema, :current_schema => current_schema
    Definite::Writer.write changes
  end

end
