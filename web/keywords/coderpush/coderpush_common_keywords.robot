*** Settings ***
Resource    ../../resources/locators/coderpush/coderpush_common_locators.robot

*** Keywords ***
I navigate to Sleek SG
    Open Browser With Option    https://sleek.com/sg/business-account/
    
I click on "${link}" link
    ${menu_element}    Generate Element From Dynamic Locator    ${mnu_link_by_name}    ${link}
    Click Visible Element    ${menu_element}