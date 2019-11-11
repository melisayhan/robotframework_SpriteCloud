*** Settings ***
Resource  /Users/melismelis/PycharmProjects/SpriteCloud/Data/inputData.robot
Resource  /Users/melismelis/PycharmProjects/SpriteCloud/Resources/common.robot
Resource  /Users/melismelis/PycharmProjects/SpriteCloud/Resources/spriteCloudTest.robot

Test Setup  common.Begin Web Test
Test Teardown  common.End Web Test

*** Test Cases ***
Unregistered user should see correct error message at login
    spriteCloudTest.Navigate to Sign In Page
    spriteCloudTest.Attempt Login  ${UNREGISTERED_USER}
    spriteCloudTest.Verify Login Page Error Message  ${UNREGISTERED_USER.ExpectedErrorMessage}

Login with invalid password should show correct error message
    spriteCloudTest.Navigate to Sign In Page
    spriteCloudTest.Attempt Login  ${INVALID_PASSWORD_USER}
    spriteCloudTest.Verify Login Page Error Message  ${INVALID_PASSWORD_USER.ExpectedErrorMessage}

Login with valid email and password should be login
    spriteCloudTest.Navigate to Sign In Page
    spriteCloudTest.Attempt Login  ${VALID_PASSWORD_USER}
    spriteCloudTest.Verify User Logged In

