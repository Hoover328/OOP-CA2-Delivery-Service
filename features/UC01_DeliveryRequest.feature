
Feature: Record Delivery Request

  As a Route Coordinator
  I want to record delivery requests
  So that deliveries can be managed by the system

  Background:
    Given the Route Coordinator is authenticated

  Scenario: Record a provisional delivery request
    When the Route Coordinator submits a provisional delivery request
    Then the system records the request as provisional

  Scenario: Record a confirmed delivery request
    When the Route Coordinator submits a confirmed delivery request
    Then the system records the request as confirmed

  Scenario: Reject an invalid delivery request
    When the Route Coordinator submits incomplete request details
    Then the system rejects the request
