Feature: GET Entries of DemoBlaze Website

  Background: Define Base Url
    Given url 'https://api.demoblaze.com/'

  Scenario: GET All Entries From DemoBlaze Website
    Given path 'entries'
    When method GET
    Then status 200
    And match response.Items[0].cat == 'phone'