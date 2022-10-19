*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url4}                https://formeld.com/
${url}                 https://training-wheels-protocol.herokuapp.com/
${url2}                https://www.inteli.edu.br/
${url3}                https://dorothy.inteli.edu.br/home                

*** Keywords ***
Nova sessão
    Open Browser                        ${url4}       chrome
    Sleep                                3
    Maximize Browser Window
Encerra sessão
    Capture Page Screenshot
    Sleep                           3
    Close Browser
    