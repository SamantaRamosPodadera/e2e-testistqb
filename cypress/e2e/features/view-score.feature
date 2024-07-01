Feature: View score

Scenario: See score
  Given the student is on the ISTQB exam page
  When the student enters the name "Marta"
  And press start button
  When the user selects "b" answer on question "1"
  When the user selects "b" answer on question "2"
  When the user selects "" answer on question "3"
  When the user selects "a" answer on question "4"
  When the user selects "c" answer on question "5"
  When the user selects "a" answer on question "6"
  When the user selects "" answer on question "7"
  When the user selects "a" answer on question "8"
  When the user selects "c" answer on question "9"
  When the user selects "b" answer on question "10"
  When the user press Finish Test button
  Then the user should see message total score "Total: 4 points"
