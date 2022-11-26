*** Settings ***
Library    DateTime
*** Keywords ***
Convert Number To Month String
    [Arguments]    ${month_number}
    ${return_month_string}    Run Keyword If    "${month_number}"=="1"    Set Variable    January
    ...    ELSE IF    "${month_number}"=="2"    Set Variable    February
    ...    ELSE IF    "${month_number}"=="3"    Set Variable    March
    ...    ELSE IF    "${month_number}"=="4"    Set Variable    April
    ...    ELSE IF    "${month_number}"=="5"    Set Variable    May
    ...    ELSE IF    "${month_number}"=="6"    Set Variable    June
    ...    ELSE IF    "${month_number}"=="7"    Set Variable    July
    ...    ELSE IF    "${month_number}"=="8"    Set Variable    August
    ...    ELSE IF    "${month_number}"=="9"    Set Variable    September
    ...    ELSE IF    "${month_number}"=="10"    Set Variable    October
    ...    ELSE IF    "${month_number}"=="11"    Set Variable    November
    ...    ELSE IF    "${month_number}"=="12"    Set Variable    December
    [Return]    ${return_month_string}

Get Date
    [Arguments]    ${date_time}
    ${return_date}    Convert Date    ${date_time}    result_format=%d
    ${return_date}    Convert To Integer    ${return_date}
    [Return]    ${return_date}
    
Get Month
    [Arguments]    ${date_time}
    ${return_month}    Convert Date    ${date_time}    result_format=%m
    [Return]    ${return_month}
    
Get Week Day
    [Arguments]    ${date_time}
    ${return_weekday}    Convert Date    ${date_time}    result_format=%A
    [Return]    ${return_weekday}
    
Get Year
    [Arguments]    ${date_time}
    ${return_year}    Convert Date    ${date_time}    result_format=%Y
    [Return]    ${return_year}