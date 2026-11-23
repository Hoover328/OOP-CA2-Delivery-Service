
Feature: Record Delivery Outcome

  As a Driver
  I want to record delivery outcomes
  So that the system maintains accurate delivery information

  Background:
    Given the Driver is authenticated
    And a consignment is assigned to the Driver

  Scenario: Record successful delivery
    When the Driver records that the consignment was delivered
    Then the system records a successful delivery

  Scenario: Record partial delivery
    When the Driver records that only part of the consignment was delivered
    Then the system records a partial delivery

  Scenario: Record refused delivery
    When the Driver records that the delivery was refused
    Then the system records a refused delivery

  Scenario: Record damaged goods
    When the Driver records that the goods were damaged
    Then the system saves the damage information

  Scenario: Record failed delivery attempt
    When the Driver records an unsuccessful delivery attempt
    Then the system records the failed delivery attempt
