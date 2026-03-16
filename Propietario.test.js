const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Propietario", () => {
  it("El creador es el propietario", async () => {
    const [owner] = await ethers.getSigners();
    const contrato = await ethers.deployContract("Propietario");
    expect(await contrato.propietario()).to.equal(owner.address);
  });
});
