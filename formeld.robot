*** Settings ***
Resource        base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Test Cases ***
Testando pagina de trabalhe conosco
    Go To                    ${url4}/contact       
    Sleep                            2
    Click Element         xpath://*[@id="uc-btn-accept-banner"]
    Input Text            css:input[name=firstname]                           Felipe
    Input Text            css:input[name=lastname]                            Patrocinio Barbosa 
    Input Text            css:input[name=country]                             Brazil
    Input Text            css:input[name=emailaddress]                        lipe_k08@hotmail.com
    Input Text            css:input[name=subject]                             I dont know
    Input Text            css:input[name=company]                             unknown   
    Sleep                           2
    Input Text            css:textarea[name=message]                           I want working with you 
    Click Element         css:input[type=checkbox]
    Click Element         css:input[name=reading-dataprivacy]
    Click Element         css:input[value=Submit]
    Sleep                       2
    Page Should Contain                                     Please select an icon.                              