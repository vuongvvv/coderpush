*** Settings ***
Resource    ../../../web/resources/init.robot
Resource    ../../../web/keywords/coderpush/coderpush_common_keywords.robot
Resource    ../../../web/keywords/coderpush/open_business_account_keywords.robot
Resource    ../../../web/keywords/coderpush/pricing_keywords.robot

*** Test Cases ***
pre-condition
    Given I navigate to Sleek SG
    When I click on "Incorporation" link
    And I click on "Open a business account" link
    
Business Account deposit or monthly fees table values verification
    [Template]    Then Verify Business Account deposit or monthly fees table values
    Annual / Setup Fees    S$0    S$35    S$0    S$144\n(S$12/month)    S$54
    Initial Deposit    S$1,000    S$1,000    S$0    S$0    S$0
    Virtual Corporate cards    Limited    Limited    Multiple    Multiple    Limited
    Minimum Balance    S$10,000    S$5,000    S$0    S$0    S$0
    Accounting    No    No    From S$75/month    No    No
    Corporate Secretary    No    No    From S$240/year    No    No
    Business Insurance    Yes    Yes    Yes    No    No
    Licensed by MAS*    Yes    Yes    Yes    No    Yes
    [Teardown]    Clean Environment
    
Meeting Date Time Verification
    Given I navigate to Sleek SG
    When I click on "Pricing" link
    And I click on "Talk to an expert" button
    And select a date "10" days from now
    And select time zone as "UTC +08:00 China, Hong Kong, Singapore"
    And set time as "11:15 am"
    Then Verify date and time value is correct in Your information section
    [Teardown]    Clean Environment