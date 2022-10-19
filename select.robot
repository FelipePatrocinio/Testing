*** Settings ***
Resource        base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Test Cases ***
Selecionar opção pelo texto
    Go To                            ${url}/dropdown
    Select From List By Label        class:avenger-list                Loki
    ${selected}=                     Get Selected List Value           class:avenger-list 
    Should Be Equal                   ${selected}                       6 

Selecionar pelo valor
    Go To                            ${url}/dropdown
    Select From List By Value        id:dropdown                        5
    ${selected}=                     Get Selected List Label         id:dropdown
    Should Be Equal                  ${selected}                      Bruce Banner                                      

