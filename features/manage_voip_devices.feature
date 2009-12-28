Feature: Manage xllamador voip_devices
  In order to send and receive SIP & IAX2 voip calls in xllamador
  As an xllamador administrator
  I want to setup and manage SIP & IAX2 voip trunks and extensions in xllamador asterisk backend
  
  Scenario: Register new voip devices
    Given I am on the new voip devices page
    When I fill in "Name" with "demo_sip"
      And I fill in "Password" with "1234"
      And I check "ulaw"
      And I check "alaw"
    And I press "Create"
    Then I should see "New voip device created"
