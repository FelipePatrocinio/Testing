*** Settings ***
Resource        base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Test Cases ***    
Fazendo login com sucesso
    Go to                            ${url}/login
    Login With                       stark    jarvis!
    Should Contain Login Alert       Olá, Tony Stark. Você acessou a área logada!

Fazendo login com usuário inválido
    Go To                           ${url}/login
    Login With                      joaoNi&&nguem    jarvis! 
    Should Contain Login Alert      O usuário informado não está cadastrado!    
         

Fazendo login com senha inválida
    Go To                           ${url}/login
    Login With                      stark    /*-+%$#56 
    Should Contain Login Alert      Senha é invalida!      
          

*** Keywords ***
Login With
    [Arguments]           ${user}    ${pass}

    Input Text               css:input[name=username]        ${user} 
    Input Text               css:input[name=password]        ${pass}
    Click Element            class:btn-login

Should Contain Login Alert
    [Arguments]            ${msg_expect}
    ${msg1}=                 Get WebElement                  id:flash      
    Should Contain           ${msg1.text}                    ${msg_expect}



                  
    