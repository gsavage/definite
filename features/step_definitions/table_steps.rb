Then /^I should have a table definition for "([^"]*)"$/ do |table_name|
  TableDefinition.definition(table_name).should_not be_nil
end

Then /^the "([^"]*)" table definition should include a "([^"]*)" column$/ do |table_name, column|
  TableDefinition[table_name].column_names.should include(column_name)
end
