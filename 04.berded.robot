*** Settings ***
Library		Selenium2Library

*** Variables ***
${URL}	https://www.berded.in.th/analysis.php
${BROWSER}	chrome

*** Test Cases ***
เบอร์เกรด A
	Open Browser    ${URL}  ${BROWSER}
	Input Text		name=number		0955653651
	Click Element   name=Submit
    Wait Until Page Contains		เบอร์เกรด A
	#Close Browser