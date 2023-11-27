*** Settings ***
Documentation       Elementos da página de login.

Resource            ../config.robot


*** Variables ***
&{PAGE_LOGIN}       txt_username=name=username
...                 txt_pwd=name=password
...                 btn_login=xpath=//button[@type='submit']
