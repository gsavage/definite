@dump
Feature: Dump definitions
  In order to know what the database currently looks like
  As a CLI
  I want to dump definition files

  Background:

  @no-clobber @announce
  Scenario: Dumping a file
    Given I have connected to a new database
    Given the "books" table exists
    When I run `definite dump books`
    Then a file named "db/tables/books.table" should exist
    And the file "db/tables/books.table" should contain "TableDefinition"



