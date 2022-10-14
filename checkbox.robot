*** Settings ***
Resource        base.robot

Test Setup        Nova sessão
Test Teardown     Encerra sessão

*** Variables ***
${check_thor}          id:thor
${check_iron}          css:input[value='iron-man']
${check_panter}        xpath://*[@id='checkboxes']/input[7]        

*** Test Cases ***
Marqued option whith ID
    Go To                               ${url}/checkboxes 
    Select Checkbox                    ${check_thor}
    Checkbox Should be selected        ${check_thor}       
    
Marqued option whith CSS selected        
    Go To                                 ${url}/checkboxes 
    Select Checkbox                       ${check_iron}
    Checkbox Should be selected           ${check_iron}       
    
Marqued Option with xpath      
    Go To                                 ${url}/checkboxes 
    Select Checkbox                       ${check_panter}
    Checkbox Should be selected           ${check_panter}                 
            

    
    