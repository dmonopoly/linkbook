Feature: user has basic abilities

	In order to use linkbook
	As a user
	I have basic abilities
	
	Scenario: user logs in
		Given I am the registered user "JohnDoe"
		And I am on the home page
		When I log in
		Then I should be on my links page
		
	@wip
	Scenario: user logs out
		Given I am logged in
		When I click the logout button
		Then I should be on the home page
		And I should be logged out
	
	@wip
	Scenario: unlogged-in user views public links
		Given I am not logged in
		And the user "john.doe" has public links
		When I go to the public link page of "john.doe"
		Then I should see the public links of "john.doe"