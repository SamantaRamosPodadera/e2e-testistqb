Feature: See answer

Scenario: See the answer to the question

Given the student is on the ISTQB exam page
When he click on the button see answer on question "1"
Then he should see a message with the correct answer "The correct answer is B" to question "1"