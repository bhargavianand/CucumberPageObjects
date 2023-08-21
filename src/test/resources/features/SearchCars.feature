
@Search-Cars
Feature: Acceptance testing to validate Search cars page is working 
	In order to validate that
	the Search Cars Page is working fine
	we will do acceptance testing

  @Search-Cars-Positive
 Scenario: Validate Search Cars Page
  Given I am on the home page "https://www.carsguide.com.au/" of carsguide website
  When I move to menu
    	|     Menu      |
			|   Buy+Sell    |
			|   Search Cars |
		And click on "Search Cars" link
		And select CarBrand as "BMW" from AnyMake droddown
		And select CarModel as "120d" from AnyModel dropdown
		And select Location as "Any Location" from SelectLocation droddown 
    And select Price as "$50,000" from price droddown
    And click on Find My Next car button
  Then I should see list of searched cars
    And the page title should be "BMW 120d Under 50,000 for Sale | CarsGuide"