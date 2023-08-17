Feature: Testing Login API
  Background: url 'https://www.demoblaze.com/'

  Scenario: Test Login
    Given path: 'Login'
    And request { username: 'example_user', password: 'password123'}
    When method post
    Then status 200
    And match response contains { token: '#string'}

  Scenario: Successful login with correct username and password
    Given path: 'Login'
    And request { username: 'valid_user', password: 'password123'}
    When method post
    Then status 200
    And match response contains { token: '#string`}

  Scenario: Unsuccessful login with incorrect username and password
    Given path: 'Login'
    And request { username: 'invalid_user', password: 'wrongpassword'}
    When method post
    Then status 400
    And match response == { message: 'Unauthorized`}

  Scenario: Unsuccessful login with missing credentials
    Given path: 'Login'
    And request { username: '', password: ''}
    When method post
    Then status 400
    And match response == { message: 'Username and password are required`}