Feature:Login DemoBlaze Website

  Background: Define Base Url
    Given url 'https://api.demoblaze.com/'

  Scenario: Perform get request for User
    * def user =
  """
  {
  "username":"Test Perform",
  "password":"dGVzdHBlcg=="
  }
"""
    Given path 'login'
    And request user
    When method POST
    Then status 200