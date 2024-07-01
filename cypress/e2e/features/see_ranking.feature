Feature: See ranking

  Scenario: See ranking
    Given the student is on the ISTQB exam page
    When the student enters the name "Laura"
    And press start button
    When the user answer the questions:
      | questionNumber | selectedAnswer |
      |              1 | b              |
      |              2 | a              |
      |              3 | c              |
      |              4 | a              |
      |              5 | c              |
      |              6 | c              |
      |              7 | a              |
      |              8 | b              |
      |              9 | c              |
      |             10 | a              |
    When the user press Finish Test button
    Then the user should see message total score "Total: 20 points"
    When the student enters the name "Pedro"
    And press start button
    When the user answer the questions:
      | questionNumber | selectedAnswer |
      |              1 |                |
      |              2 |                |
      |              3 |                |
      |              4 |                |
      |              5 |                |
      |              6 |                |
      |              7 |                |
      |              8 |                |
      |              9 |                |
      |             10 |                |
    When the user press Finish Test button
    Then the user should see message total score "Total: 0 points"
    When the student enters the name "Rosa"
    And press start button
    When the user answer the questions:
      | questionNumber | selectedAnswer |
      |              1 | a              |
      |              2 | b              |
      |              3 | a              |
      |              4 | c              |
      |              5 | b              |
      |              6 | b              |
      |              7 | b              |
      |              8 | c              |
      |              9 | a              |
      |             10 | b              |
    When the user press Finish Test button
    Then the user should see message total score "Total: -10 points"
    When the user press See Ranking button
    Then the user should see the ranking message "1 Laura  20 puntos2 Pedro  0 puntos3 Rosa  -10 puntos"
