*** Settings ***
Library     RequestsLibrary

*** Test Cases ***
Product
    Create Session    product      http://localhost:8000
    ${resp}=    Get Request    product    /api/v1/product
    Request Should Be Successful    ${resp}
    ${message}=   Convert To String    ${resp.content}
    Should Contain    ${message}    products