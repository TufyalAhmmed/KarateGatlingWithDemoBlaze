Feature: Check DemoBlaze Website with Auth token

  Background: Define Base Url
    Given url 'https://api.demoblaze.com/'

  Scenario: Check DemoBlaze Website with Auth
    * def token =
    """
    {"token":"VGVzdCBQZXJmb3JtMTY3MDMxMA=="}
    """
    Given path 'check'
    And request token
    When method POST
    Then status 200
    And match response.Item.expiration == 1670310
    And match response.Item.token == 'VGVzdCBQZXJmb3JtMTY3MDMxMA=='
    And match response.Item.username == 'Test Perform'