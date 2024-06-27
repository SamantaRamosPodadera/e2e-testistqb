import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";




When('the user selects {string} answer on question {string}', (selectedAnswer,questionnumber) => {

  cy.get('[data-cy="select-answer-'+questionnumber+'"]').select(selectedAnswer);
})

When('the user press the Correct on question {string}', (questionnumber) => {
  cy.get('[data-cy="button-correct-answer-'+questionnumber+'"]').click();
})


Then('the user should see the message {string} on question {string}',  (message, questionNumber) => {
  cy.get('[data-cy="message-correct-asnwer-'+questionNumber+'"]').should('contain.text', message);
})

