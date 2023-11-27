*** Settings ***
Documentation       Passos de contexto.

Resource            ../pages/context_page.robot


*** Keywords ***
Dado que acesso o sistema
    Open Browser    ${DATA_CONTEXT}[url]    ${DATA_CONTEXT}[chrome]
    Set Browser Implicit Wait    30
    Maximize Browser Window
    Wait Until Element Is Visible    ${PAGE_CONTEXT}[form_login]    30    Erro ao tentar acessar o sistema!
    Capture Page Screenshot

Quando fecho o sistema
    Close Browser
