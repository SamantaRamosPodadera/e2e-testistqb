import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";


  When('the user press See Ranking button', () => {
    cy.get('[data-cy="message-result-ranking"]').click(); 
  });


Then('the user should see the ranking message {string}', (message) => {
  cy.get('[data-cy="message-result-finish"]').should('contain.text', message);
})

  

  