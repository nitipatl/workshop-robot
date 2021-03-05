*** Settings ***
Library		Selenium2Library

*** Variables ***
${URL}	http://google.com
${BROWSER}	chrome

*** Test Cases ***
ค้นหาคําว่า igeargeek
	เข้าไปยังหน้าค้นหาของ google
	ค้นหาคําว่า	igeargeek
	จะต้องเจอ "igeargeek" นะ

*** Keywords ***
เข้าไปยังหน้าค้นหาของ google
	Open Browser    ${URL}		${BROWSER} 

ค้นหาคําว่า
	[Arguments]    ${KEYWORD}
	Input Text      name=q      ${KEYWORD}
    Press Keys      name=q      RETURN

จะต้องเจอ "${KEYWORD}" นะ
	Wait Until Page Contains   igeargeek
	#Close Browser