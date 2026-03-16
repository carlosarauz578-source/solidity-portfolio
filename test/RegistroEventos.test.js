const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("RegistroEventos", () => {
  it("Emite un evento al registrar", async () => {
    const contrato = await ethers.deployContract("RegistroEventos");
    await expect(contrato.registrar("Hola"))
      .to.emit(contrato, "Registrado")
      .withArgs("Hola");
  });
});
