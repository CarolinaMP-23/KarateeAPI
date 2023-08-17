Feature: Testing Signup API
  Background: url 'https://www.demoblaze.com/'

  Scenario: Test Signu
    Given path: 'Signup'
    And request { username: 'example_user', password: 'password123'}
    When method post
    Then status 200
    And match response == { message: 'Sign up success`}

  Scenario: Create a new user in signup
    Given path: 'Signup'
    And request { username: 'new_user', password: 'password123'}
    When method post
    Then status 200
    And match response == { message: 'Sign up success`}

  Scenario: Attempt to create an existing user
    Given path: 'Signup'
    And request { username: 'existing_user', password: 'password123'}
    When method post
    Then status 400
    And match response == { message: 'Username already existe`}

  Scenario: Attempt to create user with invalid password
    Given path: 'Signup'
    And request { username: 'invalid_password_user', password: '123'}
    When method post
    Then status 400
    And match response == { message: 'Invalid password`}
