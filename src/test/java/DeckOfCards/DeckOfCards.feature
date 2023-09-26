Feature: all deck of cards API

  Scenario: to verify the shuffle cards request
    Given url 'https://deckofcardsapi.com'
    And path '/api/deck/new/shuffle'
    When method GET
    Then status 200
    And match response ==
    """
     {
      "success": '#boolean',
      "deck_id": '#string',
      "remaining": '#number',
      "shuffled": '#boolean'
      }
    """

    # wng5gi55cwby


  Scenario: to verify the draw cards request
    Given url 'https://deckofcardsapi.com'
    And path '/api/deck/wng5gi55cwby/draw'
    And param count = '4'
    When method GET
    Then status 200
    And match response ==
    """
    {
	"success": '#boolean',
	"deck_id": '#string',
	"cards": '#[] #object',
	"remaining": '#number'
}
    """