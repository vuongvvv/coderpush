*** Settings ***
Resource    ../../resources/locators/coderpush/pricing_locators.robot
Resource    ../../../utility/common/date_common.robot
Resource    ../common/web_common.robot

*** Variables ***
${expected_date_time}    ${EMPTY}

*** Keywords ***
I click on "${button_text}" button
    ${button_element}    Generate Element From Dynamic Locator    ${btn_pricing_button_by_text}    ${button_text}
    Click Visible Element    ${button_element}
    
select a date "${days_no}" days from now
    Switch Window    locator=NEW
    ${current_date}    Get Current Date
    ${future_date}    Add Time To Date    ${current_date}    ${days_no} days
    ${date}    Get Date    ${future_date}
    ${month}    Get Month    ${future_date}
    ${weekday}    Get Week Day    ${future_date}
    ${year}    Get Year    ${future_date}
    ${month_string}    Convert Number To Month String    ${month}
    ${calendar_current_month}    Get Element Text    ${lbl_current_month}
    Run Keyword If    "${month_string}"!="${calendar_current_month}"    Click Visible Element    ${btn_next_month}    delay=2s
    ${day_element}    Generate Element From Dynamic Locator    ${lbl_day_on_calendar}    ${date}
    Click Visible Element    ${day_element}
    ${expected_date_time}    Set Variable    ${weekday}, ${month_string} ${date}, ${year}
    ${expected_date_time}    Set Test Variable    ${expected_date_time}
    
select time zone as "${time_zone}"
    Click Visible Element    ${drd_timezone_select}
    Input Text To Element    ${txt_search_timezone}    ${time_zone}
    ${timezone_element}    Generate Element From Dynamic Locator    ${btn_timezone_by_text}    ${time_zone}
    Click Visible Element    ${timezone_element}
    
set time as "${time}"
    ${time_element}    Generate Element From Dynamic Locator    ${btn_time_by_text}    ${time}
    Scroll To Element    ${time_element}
    Click Visible Element    ${time_element}
    ${time}    Convert To Upper Case    ${time}
    ${expected_date_time}    Catenate    ${expected_date_time}    ${time}
    ${expected_date_time}    Set Test Variable    ${expected_date_time}
    
Verify date and time value is correct in Your information section
    Verify Element Text    ${lbl_date_time_meeting}    ${expected_date_time}
    # Log    Tuesday, December 6, 2022 11:15 AM