describe('App Home', () => {
  // beforeEach(() => {
  //   cy.visit('localhost:3000')
  // })

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });
})