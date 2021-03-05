*** Settings ***
Library		Selenium2Library

*** Variables ***
${URL}	https://www.onlineconversion.com/grade_point_average.htm
${BROWSER}	chrome

*** Test Cases ***
For A
	Open Browser    ${URL}  ${BROWSER}
	Select From List By Label    name=cletterGrade  A
    Click Element   caddButton
    Wait Until Element Contains     name=cGradePointAverage     4.0   0.01
	#Close Browser

# For B
# 	Open Browser    ${URL}  
# 	Maximize Browser Window
# 	Input Text    score  75
# 	Click Element   convert
# 	Wait Until Page Contains   B
# 	Close Browser

# For C
# 	Open Browser    ${URL}
# 	Maximize Browser Window
# 	Input Text    score  68
# 	Click Element   convert
# 	Wait Until Page Contains   C
# 	Close Browser

# For D
# 	Open Browser    ${URL}
# 	Maximize Browser Window
# 	Input Text    score  52
# 	Click Element   convert
# 	Wait Until Page Contains   D
# 	Close Browser

# For F
# 	Open Browser    ${URL}
# 	Maximize Browser Window
# 	Input Text    score  13
# 	Click Element   convert
# 	Wait Until Page Contains   F
# 	Close Browser