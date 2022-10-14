*** Settings ***
Resource        base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Test Cases ***
Selecionando por ID
    Go To                            ${url}/radios
    Select Radio Button              movies    guardians
    Radio Button Should Be Set To    movies    guardians
Selecinando por value
    Go To                            ${url}/radios
    Select Radio Button              movies    iron-man
    Radio Button Should Be Set To    movies    iron-man
        
