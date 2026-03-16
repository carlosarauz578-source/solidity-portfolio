import { expect } from "chai";
import { ethers } from "hardhat";

describe("TokenAvanzado", () => {
  it("Asigna balance inicial al deployer", async () => {
    const [owner] = await ethers.getSigners();
    const token = await ethers.deployContract("TokenAvanzado");
    const balance = await token.balanceOf(owner.address);
    expect(balance).to.be.gt(0);
  });
});
