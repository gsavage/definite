Feature: Read definitions
  In order to know what the database should look like
  As a CLI
  I want to read definition files

  Scenario: Reading a file
    Given a file named "users.table" with:
      """
        TableDefinition.define :users do
          column :username, :string
        end
      """
    When I run `definite read users.table`
    Then the output should contain "users"
    And the output should contain "username"


