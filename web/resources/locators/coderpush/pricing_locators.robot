*** Variables ***
${lbl_current_month}    xpath://h3
${btn_next_month}    xpath://button[@data-selenium-test="next-month-button"]
${lbl_day_on_calendar}    xpath://span[.="_DYNAMIC_0"]
${drd_timezone_select}    xpath://div[@data-selenium-test="timezone-select"]
${txt_search_timezone}    xpath://input[@placeholder="Search"]

${lbl_date_time_meeting}    xpath://h5

# DYNAMIC
${btn_pricing_button_by_text}    xpath:(//span[contains(text(),"_DYNAMIC_0")])[1]/../..
${btn_timezone_by_text}    xpath://button[@title="_DYNAMIC_0"]
${btn_time_by_text}    xpath://span[text()="_DYNAMIC_0"]