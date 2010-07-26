Feature: Manage Inquiries
  In order to contact the website owner
  I want to create an inquiry
  
  Background:
    Given A Refinery user exists
    And I have a page titled "Contact Us" with a custom url "/contact"
    And I have a page titled "Thank You" with a custom url "/contact/thank_you"
  
  Scenario: Contact page
    When I go to the contact page
    Then I should see "Name *"
    And I should see "Email *"
    And I should see "Phone"
    And I should see "Message *" 
  
  Scenario: Create a valid inquiry
    When I go to the contact page
    And I fill in "Name *" with "Philip"
    And I fill in "Email *" with "phil@refinerycms.com"
    And I fill in "Message *" with "It sure is good to have a functional test coverage."
    And I press "Send"
    Then I should be on the contact thank you page
    And I should see "Thank You"
    And I should see "received your inquiry"
    And I should see "Return to the home page"