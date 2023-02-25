*** Settings ***
Library    SeleniumLibrary
Resource    steps.robot

*** Test Cases ***
Login APS
    Login Candidat APS

Import Data
    Import Data