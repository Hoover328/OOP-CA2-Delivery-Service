
Feature: Delivery Notifications

  As a Route Coordinator
  I want customers and producers to receive delivery updates
  So that they are informed about changes to their deliveries

  Background:
    Given the Route Coordinator is authenticated

  Scenario: Notify about a delivery delay
    Given a delivery has been delayed
    When the Route Coordinator records the delay information
    Then the system makes the delay information available to the customer and producer

  Scenario: Notify about a delivery transfer
    Given a delivery transfer is required
    When the Route Coordinator records the transfer information
    Then the system makes the transfer information available to the customer and producer

  Scenario: Notify about a delivery return
    Given a delivery is being returned
    When the Route Coordinator records the return information
    Then the system makes the return information available to the customer and producer
