Feature: Display the path of any corresponding node in a given workspace
    In order to get the path of any corresponding node in a given workspace
    As a user that is logged into the shell
    I need to be able to do that

    Background:
        Given that I am logged in as "testuser"
        And the "session_data.xml" fixtures are loaded
        And the "session_data.xml" fixtures are loaded into a workspace "test"

    Scenario: Rename a node
        Given the current node is "/tests_general_base/idExample"
        And I execute the "node:corresponding test" command
        Then the command should not fail
        And I should see the following:
        """
        /tests_general_base/idExample
        """
