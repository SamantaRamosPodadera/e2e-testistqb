import {
    Given,
    When,
    Then,
  } from "@badeball/cypress-cucumber-preprocessor";


  Given("the student is on the ISTQB exam page", () => {

    //Cuando esta definida en cypress.config.js la baseurl 
    cy.visit("/");
  });
