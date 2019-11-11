*** Settings ***
Resource  /Users/melismelis/PycharmProjects/SpriteCloud/Resources/PO/signIn.robot

*** Keywords ***
Navigate to Sign In Page
    signIn.Navigate To

Attempt Login
    [Arguments]  ${Credentials}
    signIn.Enter Credentials  ${Credentials}
    signIn.Click Submit

Verify Login Page Error Message
    [Arguments]  ${ExpectedErrorMessage}
    signIn.Verify Error Message  ${ExpectedErrorMessage}

Verify User Logged In
    signIn.Verify Logged In