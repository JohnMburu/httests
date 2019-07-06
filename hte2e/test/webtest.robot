*** Settings ***
Library    SeleniumLibrary



*** Variable ***
${expected}    Form filled out successfully
${url}    https://www.ultimateqa.com/filling-out-forms/
${name}    et_pb_contact_name_0
${message}    et_pb_contact_message_0
${button1}    //*[@id="et_pb_contact_form_0"]/div[2]/form/div/button

${name_txt}    John Mburu
${blankname_txt}
${message_txt}    This is a sample message
${blankmessage_txt}
${validationmsg}    Please, fill in the following fields:
${nameval}    Name
${messageval}    Message
${successmessage}    //*[@id="et_pb_contact_form_0"]/div/p
${valErrormsg}    //*[@id="et_pb_contact_form_0"]/div[1]/ul[1]/li
*** Test Cases ***
InvalidNameTestCase
    Open Browser    ${url}    chrome
    Input Text    ${name}    ${blankname_txt}
    Input Text    ${message}    ${message_txt}
    Click Button    ${button1}
    ${valresults}=    Get Text    ${successmessage}   
    Should Be Equal As Strings    ${valresults}    ${validationmsg}
    ${valname}=    Get Text     ${valErrormsg}
    Should Be Equal As Strings    ${nameval}    ${valname}
    Close Browser
    
InvalidMessageTestCase
    Open Browser    ${url}    chrome
    Input Text    ${name}    ${name_txt}
    Input Text    ${message}    ${blankmessage_txt}
    Click Button    ${button1}
    ${valresults}=    Get Text    ${successmessage}   
    Should Be Equal As Strings    ${valresults}    ${validationmsg}
    ${valmessage}=    Get Text     ${valErrormsg}
    Should Be Equal As Strings    ${valmessage}    ${messageval}
    Close Browser
    
TypeMessageTestCase
    Open Browser    ${url}    chrome
    Input Text    ${name}    ${name_txt}
    Input Text    ${message}    ${message_txt}
    Click Button    ${button1}
    Wait Until Element Is Visible    ${successmessage}    
    ${results}=    Get Text    ${successmessage}
    Log To Console    ${results}    
    Should Be Equal As Strings    ${results}    ${expected}
    Close Browser
    
    