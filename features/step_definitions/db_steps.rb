require 'sqlite3'

def database_yml
  <<END_OF_YML
adapter: sqlite3
database: test.db

END_OF_YML
end

Given /^I have connected to a new database$/ do
  puts `pwd`
  _mkdir 'tmp/aruba/config'

  File.delete('tmp/aruba/test.db') if File.exists?('tmp/aruba/test.db')
  @db = SQLite3::Database.new( "tmp/aruba/test.db" )

  File.open('tmp/aruba/config/database.yml', 'w') { |f| f << database_yml }
end


Given /^the "([^"]*)" table exists$/ do |table_name|
  create_table table_name
end

