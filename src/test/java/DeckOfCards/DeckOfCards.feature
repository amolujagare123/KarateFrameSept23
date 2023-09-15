Feature: all deck of cards API

  Scenario: to verify the shuffle cards request
    Given url 'https://deckofcardsapi.com'
    And path '/api/deck/new/shuffle'
    When method GET
    Then status 200