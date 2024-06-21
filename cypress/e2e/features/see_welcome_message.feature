Feature: Welcome the student

Scenario: Enter a name with less than 10 characters

Given the student is on the ISTQB exam page
When the student enters the name "Marta"
And press start button
Then the student should see the message "Welcome Marta"


Scenario: Enter a name with more than 10 characters

Given the student is on the ISTQB exam page
When the student enters the name "Samanta Ramos"
And press start button
Then the student should see the message "Welcome Samanta Ramos"