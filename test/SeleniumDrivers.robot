*** Settings ***
Documentation		These keywords need the webdriver-manager module
... 							pip install webdriver-manager
... 							https://pypi.org/project/webdriver-manager/

*** Keywords ***
Update Chrome Webdriver
    [Documentation]    Update Chrome Web Driver
    ${driverpath}=    Evaluate    webdriver_manager.chrome.ChromeDriverManager().install()
    ...    modules=webdriver_manager.chrome
    Log    ${driverpath}
    [Return]    ${driverpath}

