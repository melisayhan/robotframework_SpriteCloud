** Settings ***
Library    Selenium2Library

*** Variables ***
#Configuration
${BROWSER} =  https://app.calliope.pro/
${ENVIRONMENT} =  prod
&{BASE_URL}  dev=https://dev.calliope.pro/  qa=https://qa.calliope.pro/  prod=https://app.calliope.pro/
${LOGIN_URL} =  login

#Input Data
&{UNREGISTERED_USER}   Email=melis@melis.com    Password=123456   ExpectedErrorMessage=Email or password is invalid
&{INVALID_PASSWORD_USER}  Email=nuraymeliscelik@gmail.com    Password=654321    ExpectedErrorMessage=Email or password is invalid
&{VALID_PASSWORD_USER}   Email=nuraymeliscelik@gmail.com    Password=123456



