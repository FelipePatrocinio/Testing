
*** Settings ***
Library        app.py



*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=            Welcome                Felipe
    Should Be Equal        ${result}            Ola Felipe, Bem vindo ao curso basico de Robot Framework!
       

