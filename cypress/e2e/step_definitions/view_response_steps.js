import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";


When('he click on the button see answer on question {string}', (questionNumber) => {
  cy.get('[data-cy="button-see-answer-'+questionNumber+'"]').click();
})



Then('he should see a message with the correct answer {string} to question {string}', (message, questionNumber) => {
  cy.get('[data-cy="message-see-answer-'+questionNumber+'"]').should('contain.text', message);
})
