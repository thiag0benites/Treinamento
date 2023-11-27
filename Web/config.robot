*** Settings ***
Documentation       Configurações básicas do ambiente, chamadas de bibliotecas, pages e steps (elementos de páginas).

Library             SeleniumLibrary
Library             FakerLibrary    locale=pt_BR
# Massa de dados fixa do teste
Resource            resources/custom_keywords.robot
Resource            data/test_data.robot
