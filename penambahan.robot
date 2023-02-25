*** Settings ***
Library    SeleniumLibrary
Resource    steps.robot

*** Test Cases ***
Login APS
    Login Candidat APS

Penambahan Data
    Penambahan Data Baru