*** Settings ***
Documentation       Testes da página de login.

Resource            ../steps/context_steps.robot
Resource            ../steps/login_steps.robot

Test Setup          Dado que acesso o sistema
Test Teardown       Quando fecho o sistema


*** Test Cases ***
CT001:Realizar login com sucesso
    Dado que preencho usuario "${DATA_LOGIN}[user]" e Senha "${DATA_LOGIN}[pwd]"
    Quando efetuo o click no botao Login
    Entao valido o acesso
