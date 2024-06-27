Feature: Correct answer


Scenario Outline: Respond with an answer
Given the student is on the ISTQB exam page

When the user selects <answer> answer on question <questionNumber>

And the user press the Correct on question <questionNumber>

Then the user should see the message <message> on question <questionNumber>

Examples:
| answer | questionNumber | message |
| "b"    | "1" | "The question is correct you receive 2" |
| "a"    | "1" | "The question is incorrect you receive -1" |
| ""    | "1" | "The question is incorrect you receive 0" |
