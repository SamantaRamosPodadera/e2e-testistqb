import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";




When('the user selects {string} answer on question {string}', (selectedAnswer,questionnumber) => {

  cy.get('[data-cy="select-answer-'+questionnumber+'"]').select(selectedAnswer);
})

When('the user press Correct on question {string}', (questionnumber) => {
  cy.get('[data-cy="button-correct-answer-'+questionnumber+'"]').click();
})



Then('the user should see the correct message {string} on question {string}', (correctAnswer, questionNumber) => {
  cy.get('[data-cy="message-correct-asnwer-'+questionNumber+'"]').should('contain.text', correctAnswer);
})

When('the user selects {string} question on answer {string}', (questionnumber,selectedAnswer) => {

  cy.get('[data-cy="select-answer-'+questionnumber+'"]').select(selectedAnswer);
})

When('the user press the Correct on question {string}', (questionnumber) => {
  cy.get('[data-cy="button-correct-answer-'+questionnumber+'"]').click();
})

Then('the user should see the incorrect message {string} on question {string}', (icorrectAnswer, questionNumber) => {
  cy.get('[data-cy="message-correct-asnwer-'+questionNumber+'"]').should('contain.text', icorrectAnswer);
})

