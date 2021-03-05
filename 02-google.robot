*** Settings ***
Library		Selenium2Library

*** Variables ***

*** Test Cases ***
Search Data From Google.com
    Open Browser    http://google.com   chrome
	Input Text      name=q      igeargeek
    Press Keys      name=q      RETURN
	Wait Until Page Contains    igeargeek
	#Close Browser

*** Keywords ***