*** Settings ***
Library         SudsLibrary
Resource        ${CURDIR}${/}..${/}global${/}keywords.robot
Force Tags      webservice

*** Test Cases ***
Call Webservice Happy Flow
  Create Soap Client  ${URL}/ws/squareroots.wsdl
  ${result} =  Call Soap Method  squareRoot    25
  Should be equal as numbers  ${result}  5