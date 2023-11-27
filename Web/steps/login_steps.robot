*** Settings ***
Documentation       Código de automação dos passos.

Resource            ../pages/login_page.robot
Resource            ../pages/home_page.robot


*** Keywords ***
Dado que preencho usuario "${str_user}" e Senha "${str_pwd}"
    Input Text    ${PAGE_LOGIN}[txt_username]    ${str_user}
    Input Text    ${PAGE_LOGIN}[txt_pwd]    ${str_pwd}
    Capture Page Screenshot

Quando efetuo o click no botao Login
    Click Button    ${PAGE_LOGIN}[btn_login]

Entao valido o acesso
    Wait Until Element Is Visible    ${PAGE_HOME}[main_menu]    30    Página home não foi carregada!
    Capture Page Screenshot
