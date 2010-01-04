Feature: Manage xllamador voip_devices
  In order to send and receive SIP & IAX2 voip calls in xllamador
  As an administrator
  I want to create and manage voip devices
  
  Background:
    Given the following voip devices:
    | name      | technology | password |
    | tatw      | iax2       | 1234     |
    | viptravel | iax2       | aabb     |
    | m4sg      | iax2       | eeff     |

    And the following user records:
    | username  | password  | password_confirmation| roles |
    | rene      |  1234     | 1234                 | admin |
    | john      |  doeo     | doeo                 | 0     |

    Scenario: Voip Devices List
      When I go to the voip devices list
      Then I should see "tatw"
      And I should see "viptravel"

    Scenario: Create new voip device
      Given I have no voip devices
        And I am logged in as "rene" with password "1234" 
      When I am on the voip devices list
        And I follow "New Voip Device"
        And I fill in "Name" with "demo_sip"
        And I fill in "Password" with "1234"
        And I check "ulaw"
        And I check "alaw"
        And I press "Create"
      Then I should see "New voip device created"
        And I should have 1 voip devices

    Scenario: Unauthorized user cant create voip devices
      Given I have no voip devices
        And I am logged in as "john" with password "doeo" 
      When I am on the voip devices list
      Then I should not see "New Voip Device"
