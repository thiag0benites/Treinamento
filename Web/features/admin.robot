*** Settings ***
Documentation       Testes da menu admin.

Resource            ../steps/context_steps.robot
Resource            ../steps/login_steps.robot
Resource            ../steps/admin_steps.robot

Test Setup          Dado que acesso o sistema
Test Teardown       Quando fecho o sistema


*** Test Cases ***
CT002:Cadastrar novo usuario
    Dado que preencho usuario "${DATA_LOGIN}[user]" e Senha "${DATA_LOGIN}[pwd]"
    Quando efetuo o click no botao Login
    Entao valido o acesso
    Dado que acesso o menu "${DATA_ADMIN}[item_menu]"
    E realizo o click no botao [+ Add]
    E preencho os campos [User Role], [Employee Name], [Status], [Username], [Password] e [Confirm Password]
    # E realizo o click no botao [Save]
