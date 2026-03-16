import { expect } from "chai";
import { ethers } from "hardhat";

describe("Counter", () => {
  it("inc() incrementa a 1", async () => {
    const counter = await ethers.deployContract("Counter");
    await counter.inc();
    expect(await counter.x()).to.equal(1n);
  });
});
