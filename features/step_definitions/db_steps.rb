require 'sqlite3'

Given /^I have connected to a new database$/ do
  File.delete('test.db') if File.exists?('test.db')
  @db = SQLite3::Database.new( "test.db" )
end


Given /^the "([^"]*)" table exists$/ do |table_name|
  create_table table_name
end

