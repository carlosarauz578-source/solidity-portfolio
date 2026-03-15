import { expect } from "chai";
import { ethers } from "hardhat";

describe("Propietario", function () {
  it("Debe asignar el propietario al desplegar", async function () {
    const [owner] = await ethers.getSigners();
    const Propietario = await ethers.getContractFactory("Propietario");
    const contrato = await Propietario.deploy();
    expect(await contrato.propietario()).to.equal(owner.address);
  });
});
