*** Settings ***
Library    Selenium2Library
Resource    /Users/melismelis/PycharmProjects/SpriteCloud/Data/inputData.robot

*** Keywords ***
Begin Web Test
    Open Browser    ${BROWSER}
End Web Test
    Close All Browsers