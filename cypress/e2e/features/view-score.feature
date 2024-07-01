Feature: View score

  Scenario: See score
    Given the student is on the ISTQB exam page
    When the student enters the name "Marta"
    And press start button
    
    When the user answer the questions:
      | questionNumber | selectedAnswer |
      |              1 | b              |
      |              2 | b              |
      |              3 |                |
      |              4 | a              |
      |              5 | c              |
      |              6 | a              |
      |              7 |                |
      |              8 | a              |
      |              9 | c              |
      |             10 | b              |
      
    When the user press Finish Test button
    Then the user should see message total score "Total: 4 points"
