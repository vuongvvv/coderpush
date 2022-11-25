*** Settings ***
Resource    ../../../web/resources/init.robot
Resource    ../../../web/keywords/coderpush/coderpush_common_keywords.robot
Resource    ../../../web/keywords/coderpush/open_business_account_keywords.robot

*** Test Cases ***
pre-condition
    Given I navigate to Sleek SG
    When I click on "Incorporation" link
    And I click on "Open a business account" link
    
Scenario Outline: Business Account deposit or monthly fees table values verification
    [Template]    Then Verify Business Account deposit or monthly fees table values
    
    Annual / Setup Fees    S$0    S$35    S$0    S$144\n(S$12/month)    S$54
    Initial Deposit    S$1,000    S$1,000    S$0    S$0    S$0
    
     # Annual / Setup Fees  Initial Deposit Virtual Corporate cards Minimum Balance Accounting      Corporate Secretary Business Insurance Licensed by MAS*   
     # S$0                  S$1,000         Limited                 S$10,000        No              No                  Yes                Yes             
     # S$35                 S$1,000         Limited                 S$5,000         No              No                  Yes                Yes             
     # S$0                  S$0             Multiple                S$0             From S$75/month From S$240/year     Yes                Yes             
     # S$144 (S$12/month)   S$0             Multiple                S$0             No              No                  No                 No              
     # S$54                 S$0             Limited                 S$0             No              No                  No                 Yes             

  # Scenario Outline: Business Account deposit or monthly fees table values verification
    # Given I navigate to Sleek SG
    # When I click on "Pricing" link
    # And I click on "Talk to an expert" button
    # And select a date "10" days from now
    # And select time zone as "UTC +08:00 China, Hong Kong, Singapore"
    # And set time as "11:30 am"
    # Then Verify date and time value is correct in Your information section