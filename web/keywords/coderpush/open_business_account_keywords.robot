*** Settings ***
Resource    ../../resources/locators/coderpush/open_business_account_locators.robot

*** Keywords ***
Verify Business Account deposit or monthly fees table values
    [Arguments]    ${header_title}    ${dbs}    ${uob}    ${sleek}    ${aspire}    ${wise}
    ${header_element}    Generate Element From Dynamic Locator    ${lbl_deposit_monthly_fee_header}    ${header_title}
    Verify Element Is Visible    ${header_element}
    ${dbs_element}    Generate Element From Dynamic Locator    ${lbl_dbs_on_deposit_monthly_fee_table}    ${header_title}
    Verify Element Text     ${dbs_element}    ${dbs}
    ${uob_element}    Generate Element From Dynamic Locator    ${lbl_uob_on_deposit_monthly_fee_table}    ${header_title}
    Verify Element Text    ${uob_element}    ${uob}
    ${sleek_element}    Generate Element From Dynamic Locator    ${lbl_sleek_on_deposit_monthly_fee_table}    ${header_title}
    Verify Element Text    ${sleek_element}    ${sleek}
    ${aspire_element}    Generate Element From Dynamic Locator    ${lbl_aspire_on_deposit_monthly_fee_table}    ${header_title}
    Verify Element Text    ${aspire_element}    ${aspire}
    ${wise_element}    Generate Element From Dynamic Locator    ${lbl_wise_on_deposit_monthly_fee_table}    ${header_title}
    Verify Element Text    ${wise_element}    ${wise}