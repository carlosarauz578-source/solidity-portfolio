import { expect } from "chai";
import { ethers } from "hardhat";

describe("Counter", function () {
  it("Incrementa correctamente con inc()", async function () {
    const counter = await ethers.deployContract("Counter");
    await counter.inc();
    expect(await counter.x()).to.equal(1n);
  });
});
