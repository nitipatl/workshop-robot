*** Settings ***
Resource         03.02.resource.robot
Documentation    ค้นหาข้อมูลจากระบบ google.com
Library          Selenium2Library
Test Teardown    Close All Browsers

*** Test Cases ***
ค้นหาข้อมูลโรคติดต่อจาก google
	[Template]    ค้นหาข้อมูล
	#-----------------------------------#
	#    Keyword   |   Expected Result  #
	#-----------------------------------#
		อีโบลา           อีโบลา
        โควิด            โควิด