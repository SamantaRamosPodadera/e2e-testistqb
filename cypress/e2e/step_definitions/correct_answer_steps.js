import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";




When('the user selects {string} answer on question {string}', (selectedAnswer,questionnumber) => {

  cy.get('[data-cy="select-answer-1'+questionnumber+'"]').select(selectedAnswer);
})
