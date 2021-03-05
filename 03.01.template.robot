*** Settings ***
Documentation    ค้นหาข้อมูลจากระบบ google.com
Library          Selenium2Library
Test Teardown    Close All Browsers

*** Variables ***
${GOOGLE URL}    http://www.google.com
${BROWSER}	chrome

*** Test Cases ***
ค้นหาข้อมูลโรคติดต่อจาก google
	[Template]    ค้นหาข้อมูล
	#-----------------------------------#
	#    Keyword   |   Expected Result  #
	#-----------------------------------#
		อีโบลา           อีโบลา
        โควิด            โควิด

*** Keywords ***
ค้นหาข้อมูล
	[Arguments]     ${keyword}    ${expected result}

	เปิดหน้าแรกของ google
	ใส่คำที่ต้องการค้นหา     ${keyword}
	เจอคำที่ต้องการค้นหา    ${expected result}


เปิดหน้าแรกของ google
	Open Browser    ${GOOGLE URL}   ${BROWSER}

ใส่คำที่ต้องการค้นหา
	[Arguments]    ${keyword}
	Input Text      name=q      ${KEYWORD}
    Press Keys      name=q      RETURN

เจอคำที่ต้องการค้นหา
	[Arguments]    ${expected result}
	Wait Until Page Contains    ${expected result}