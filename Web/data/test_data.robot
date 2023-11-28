*** Settings ***
Documentation       Dados utilizados nos testes. Cada dicionário representa uma página.


*** Variables ***
&{DATA_CONTEXT}     url=https://opensource-demo.orangehrmlive.com/
...                 chrome=Chrome
...                 firofox=firefox

&{DATA_LOGIN}       user=Admin
...                 pwd=admin123

&{DATA_ADMIN}       item_menu=Admin