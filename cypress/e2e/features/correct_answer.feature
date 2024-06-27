Feature: Correct answer

Scenario: Respond with a correct answer

Given the student is on the ISTQB exam page

When the user selects "b" answer on question "1"

And the user press Correct on question "1"

Then the user should see the correct message "The question is correct you receive 2" on question "1"

Scenario: Respond with an incorrect answer

Given the student is on the ISTQB exam page

When the user selects "1" question on answer "a" 

And the user press the Correct on question "1"

Then the user should see the incorrect message "The question is incorrect you receive -1" on question "1"