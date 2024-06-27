Feature: Welcome the student

Scenario: Enter a name with less than 10 characters

Given the student is on the ISTQB exam page
When the student enters the name "Marta"
And press start button
Then the student should see the message "Welcome Marta"


Scenario: Enter a name empty

Given the student is on the ISTQB exam page
Then the student should see the error welcome message "Complete the requested information"