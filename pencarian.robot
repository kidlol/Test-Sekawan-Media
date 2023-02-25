*** Settings ***
Library    SeleniumLibrary
Resource    steps.robot

*** Test Cases ***
Login APS
    Login Candidat APS

Pencarian Data
    Pencarian Data dengan Field Pencarian