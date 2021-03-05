*** Settings ***
Library     Selenium2Library

*** Variables ***
${BROWSER}  chrome

*** Test Cases ***

ค้นหาคำว่า "เบอร์มงคล" เจอคำว่า "berdodee"
   เข้าไปยังหน้าค้นหาของ "https://google.com"
   ค้นหาคำว่า "เบอร์มงคล"
   จะต้องเจอ "berdodee" นะ


*** Keywords ***

เข้าไปยังหน้าค้นหาของ "${GOOGLE_URL}"
	Open Browser    ${GOOGLE_URL}		${BROWSER} 

ค้นหาคำว่า "${KEYWORD}"
	Input Text      name=q      ${KEYWORD}
    Press Keys      name=q      RETURN

จะต้องเจอ "${RESULT}" นะ
	Wait Until Page Contains   ${RESULT}
	#Close Browser