import {
    Given,
    When,
    Then,
}from "@badeball/cypress-cucumber-preprocessor";

Given("The studen visit istqb test page", () => {
cy.visit("/");

cy.clearCookies();

cy.reload();

cy.get(".nav-link");

});
