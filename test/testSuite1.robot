*** Settings ***
Library   SeleniumLibrary
#Resource 	SeleniumDrivers.robot
#Suite Setup 	Update Chrome Webdriver

*** Variables ***
${driverpath}   	Update Chrome Webdriver
#${CHROMEDRIVER}  C:\webdrivers\chromedriver-win64\chromedriver-win64\chromedriver.exe  # Utilisez des barres obliques normales

*** Tasks ***
premierTestRobot
    Log    hello fatima

FirstSeleniumTest
 
        [tags]                        tc1
        Open Browser 	              https://www.google.com/ 	Chrome 
        Set Browser Implicit Wait     5
	    Maximize browser window
       
        input text                    name=q  voiture
        Press Keys                    name=q  ENTER  #ESCAPE
        #Click button                 name=btnK
        Sleep                         3
        Close Browser
        Log                           Test completed!!


SimpleLoginTest 
    
    [tags]                     login
    open browser               https://opensource-demo.orangehrmlive.com/  chrome
    set browser implicit wait  10
    input text                 name=username   Admin
    input password             name=password   admin123
    click button               xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    sleep                      4
    click element              xpath=//*[@id="app"]/div[1]/div[1]/header/div[1]/div[3]/ul/li/span/i 
    sleep                      2
    click element              link=Logout
    sleep                      4
    close browser
    log                        test completed  

