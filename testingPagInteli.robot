*** Settings ***
Resource        base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Test Cases ***
Testing pag login
    Go To               ${url3}/entrar
    Sleep                            1
    Click Element       class:no-bg
    Sleep                            1
    Input Text          id:field-:r6:                                           JoaoSilva
    Input Text          id:field-:r7:                                           123456789
    Sleep                            1
    Click Element       xpath://*[@id="root"]/div/div[1]/div/form/button
    Sleep                            3
    ${msg}=             Get WebElement                                           id:field-:r6:-feedback
    Sleep                            3
    Should Contain      ${msg.text}                                             E-mail inválido                 

Testing pag the contato with E-mail invalid - #002
    Go To                        ${url2}/contato
    Sleep                            2
    Input Text                   css:input[name=cf_nome_completo]                  Felipe Patrocinio
    Input Text                   css:input[name=email]                             lipe_k08hotmail.com
    Select From List By Label    id:rd-select_field-l81qxpei                       Trabalhe conosco
    Input Text                   id:rd-text_field-l81qxpej                         Olá ! Gostaria de entrar em contato para realizar uma entrevista.
    Select Checkbox              id:rd-checkbox_field-l81qxpel
    Click Element                id:rd-button-kt01iadm
    ${msg}=                      Get WebElement                                    xpath://*[@id="conversion-form-pagina-de-contato"]/div[1]/div[2]/label[2]
    Should Contain               ${msg.text}                                       Endereço de e-mail inválido                            

Testing pag the contato with login invalid - #003
      Go To                      ${url2}/contato
      Sleep                            2
    Input Text                   css:input[name=cf_nome_completo]                  **
    Input Text                   css:input[name=email]                             lipe_k08@hotmail.com
    Select From List By Label    id:rd-select_field-l81qxpei                       Trabalhe conosco
    Input Text                   id:rd-text_field-l81qxpej                         Olá ! Gostaria de entrar em contato para realizar uma entrevista.
    Select Checkbox              id:rd-checkbox_field-l81qxpel
    Click Element                id:rd-button-kt01iadm
 
       

    
         
       