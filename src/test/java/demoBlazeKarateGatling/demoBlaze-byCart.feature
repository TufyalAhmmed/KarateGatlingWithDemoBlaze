Feature: Go to Phone Category from DemoBlaze Website

  Background: Define Base Url
    Given url 'https://api.demoblaze.com/'

  Scenario: Go To Phone Category
    * def phone =
    """
    {"cat":"phone"}
    """
    Given path 'bycat'
    And request phone
    When method POST
    Then status 200
    And match response.Items[0] == {"cat":"phone","desc":"The Samsung Galaxy S6 is powered by 1.5GHz octa-core Samsung Exynos 7420\n processor and it comes with 3GB of RAM. The phone packs 32GB of \ninternal storage cannot be expanded. ","id":1,"img":"imgs/galaxy_s6.jpg","price":360.0,"title":"Samsung galaxy s6"}
    And match response.Items[1] == {"cat":"phone","desc":"The Nokia Lumia 1520 is powered by 2.2GHz quad-core Qualcomm Snapdragon 800 processor and it comes with 2GB of RAM. ","id":2,"img":"imgs/Lumia_1520.jpg","price":820.0,"title":"Nokia lumia 1520"}
    And match response.Items[2] == {"cat":"phone","desc":"The Motorola Google Nexus 6 is powered by 2.7GHz quad-core Qualcomm Snapdragon 805 processor and it comes with 3GB of RAM.","id":3,"img":"imgs/Nexus_6.jpg","price":650.0,"title":"Nexus 6"}
    And match response.Items[3] == {"cat":"phone","desc":"The Samsung Galaxy S7 is powered by 1.6GHz octa-core it comes with 4GB \nof RAM. The phone packs 32GB of internal storage that can be expanded up\n to 200GB via a microSD card.","id":4,"img":"imgs/galaxy_s6.jpg","price":800.0,"title":"Samsung galaxy s7"}