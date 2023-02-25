*** Settings ***
Library    SeleniumLibrary
Resource    steps.robot

*** Test Cases ***
Login APS
    Login Candidat APS

Filter Data
    Filter Data dengan Fitur Filter