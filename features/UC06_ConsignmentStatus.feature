
Feature: Record Consignment Status

  As a Depot Worker
  I want to record receipt, checking and route assignment separately
  So that consignment statuses are accurately maintained

  Background:
    Given the Depot Worker is authenticated and authorised

  Scenario: Record consignment receipt
    Given a consignment exists in the system
    When the Depot Worker records its receipt details
    Then the system saves the receipt information
    And marks the consignment as received

  Scenario: Record consignment checking
    Given a consignment has been received
    When the Depot Worker records its checking details
    And the checking result is accepted
    Then the system saves the checking information
    And marks the consignment as checked

  Scenario: Assign a checked consignment to a route
    Given a consignment has been checked and accepted
    When the Depot Worker assigns it to a valid route
    Then the system saves the route assignment
    And marks the consignment as assigned

  Scenario: Prevent assignment before checking
    Given a consignment has not been checked
    When the Depot Worker attempts to assign it to a route
    Then the system rejects the assignment

  Scenario: Hold or reject a consignment
    Given a consignment has been received
    When the Depot Worker records a checking result of held or rejected
    Then the system saves the checking result
    And prevents route assignment

  Scenario: Reject duplicate or invalid receipt information
    Given a consignment has already been received
    When the Depot Worker submits duplicate or invalid receipt information
    Then the system rejects the operation
