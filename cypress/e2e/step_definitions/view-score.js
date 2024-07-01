import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";



  When('the user press Finish Test button', () => {
    cy.get('[data-cy="button-finish"]').click(); // Ajusta el selector según corresponda
  });
  
  Then('the user should see message total score {string}', (message) => {
    cy.get('[data-cy="total-score"]').should('contain.text', message); // Ajusta el selector según corresponda
  });