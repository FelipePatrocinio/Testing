*** Settings ***
Resource        base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Test Cases ***
Verificar o valor ao informar o numero da linha
    Go To                            ${url}/tables
    Table Row Should Contain         Id:actors    1    $ 10.000.000
    Table Row Should Contain         Id:actors    1    Vingadores
    Table Row Should Contain         Id:actors    1    @robertdowneyjr
    Table Row Should Contain         Id:actors    1    Robert Downey Jr

Descobre a linha pelo texto chave e pelos demais valores
    Go To                         ${url}/tables
    ${target}=                    Get WebElement               xpath:.//tr[contains(.,'@robertdowneyjr')]
    Should Contain                ${target.text}               $ 10.000.000
    Should Contain                ${target.text}               Vingadores
    Should Contain                ${target.text}               Homem de Ferro	

     

        





