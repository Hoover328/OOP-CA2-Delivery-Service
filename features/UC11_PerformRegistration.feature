
Feature: Perform Registration

  As a Customer
  I want to register an account for the service
  So that I can receive updates on parcels and apply for delivery

  Scenario: Successfully register a customer account
    Given a customer does not have an account
    When the customer submits their registration details
    Then the system creates a customer account
    And the customer is registered with the service
