import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";



  When('the user press Finish Test button', () => {
    cy.get('[data-cy="message-result-asnwer"]').click(); // Ajusta el selector según corresponda
  });
  
  Then('the user should see message total score {string}', (message) => {
    cy.get('[data-cy="message-result-points"]').should('contain.text', message); // Ajusta el selector según corresponda
  });


When('the user answer the questions:', (dataTable) => {
  dataTable.hashes().forEach(table => {  

    cy.get('[data-cy="select-answer-'+table.questionNumber+'"]').select(table.selectedAnswer);
    
  });
})
