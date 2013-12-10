Feature: Adopting puppies
  As a puppy lover
  I want to adopt puppies
  So they can chew my furniture

#Scenario: Adopting a puppy using a table
#  When I click the View Details button for "Brook"
#  And I click the Adopt Me button
#  And I click the Complete the Adoption button
#  And I complete the adoption with:
#  |name   |address        |email      |pay_type|
#  |Franco |123 Fake street|ff@mail.com|Check   |
#  Then I should see "Thank you for adopting a puppy!"

Scenario: Adopting a puppy using partial default data
  When I click the View Details button for "Brook"
  And I click the Adopt Me button
  And I click the Complete the Adoption button
  And I complete the adoption using a Credit card
  Then I should see "Thank you for adopting a puppy!"

Scenario: Adopting a puppy using all default data
  When I click the View Details button for "Brook"
  And I click the Adopt Me button
  And I click the Complete the Adoption button
  And I complete the adoption
  Then I should see "Thank you for adopting a puppy!"

Scenario: Name is required field
  When I checkout leaving the name field blank
  Then I should see the error message "Name can't be blank"

Scenario: Verify message when adoption is processed
  When I process a pending adoption
  Then I should see the thank you message
#  Message is "Please thank <adopter's name> for the order!"


#Scenario Outline: : Adopting one puppy
#  Given I am on the puppy adoption site
#  When I click the View Details button for "Brook"
#  And I click the Adopt Me button
#  And I click the Complete the Adoption button
#  And I enter "<name>" in the name field
#  And I enter "<address>" in the address field
#  And I enter "<email>" in the email field
#  And I select "<pay_type>" from the pay with dropdown
#  And I click the Place Order button
#  Then I should see "Thank you for adopting a puppy!"
#
#Examples:
#  | name   | address         | email        | pay_type      |
#  | Franco | 123 calle falsa | ff@email.com | Credit card   |
#  | Ale    | 234 street      | ale@mail.com | Check         |
#  | Eze    | 456 avenue      | eze@mail.com | Purchase order|
#
#  Scenario: Adopting two puppies
#    Given I am on the puppy adoption site
#    When I click the View Details button for "Brook"
#    And I click the Adopt Me button
#    And I click the Adopt Another Puppy button
#    And I click the View Details button for "catty"
#    And I click the Adopt Me button
#    And I click the Complete the Adoption button
#    And I enter "Franco" in the name field
#    And I enter "Calle falsa 123" in the address field
#    And I enter "ff@lala" in the email field
#    And I select "Credit card" from the pay with dropdown
#    And I click the Place Order button
#    Then I should see "Thank you for adopting a puppy!"

