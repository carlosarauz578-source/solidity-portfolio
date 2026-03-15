import { expect } from "chai";
import { ethers } from "hardhat";

describe("RegistroEventos", function () {
  it("Debe registrar un evento correctamente", async function () {
    const RegistroEventos = await ethers.getContractFactory("RegistroEventos");
    const contrato = await RegistroEventos.deploy();
    const tx = await contrato.registrarEvento("Evento1");
    await tx.wait();
    const eventos = await contrato.obtenerEventos();
    expect(eventos[0]).to.equal("Evento1");
  });
});
