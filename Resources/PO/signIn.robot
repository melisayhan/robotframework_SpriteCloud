*** Settings ***
Library  Selenium2Library
Resource  /Users/melismelis/PycharmProjects/SpriteCloud/Data/inputData.robot

*** Variables ***
${SIGN_IN_EMAIL} =        //*[@id="user_session_email"]
${SIGN_IN_PASSWORD} =     //*[@id="user_session_password"]
${LOGIN_SUBMIT_BUTTON} =      xpath=/html/body/div[2]/div/div[1]/section/div/form/div[3]/button

*** Keywords ***
Navigate To
    ${SignInUrl} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${LOGIN_URL}
    go to  ${SignInUrl}
Enter Credentials
    [Arguments]  ${Credentials}
    Run keyword unless  '${Credentials.Email}' == '#BLANK'  Input Text  ${SIGN_IN_EMAIL}  ${Credentials.Email}
    Run keyword unless  '${Credentials.Password}' == '#BLANK'  Input Text  ${SIGN_IN_PASSWORD}  ${Credentials.Password}
Click Submit
    Click Button  ${LOGIN_SUBMIT_BUTTON}
Verify Error Message
    [Arguments]  ${ExpectedErrorMessage}
    Page Should Contain  ${ExpectedErrorMessage}
Clear Input Fields
    Clear Element Text  ${SIGN_IN_EMAIL}
    Clear Element Text  ${SIGN_IN_PASSWORD}
Verify Logged In
    Page Should Contain Element    xpath=/html/body/div[2]/div/div[1]/div[3]/div[1]/ul/li/a