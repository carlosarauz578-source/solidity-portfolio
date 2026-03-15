import { expect } from "chai";
import { ethers } from "hardhat";

describe("TokenAvanzado", function () {
  it("Debe asignar tokens iniciales al creador", async function () {
    const [owner] = await ethers.getSigners();
    const TokenAvanzado = await ethers.getContractFactory("TokenAvanzado");
    const contrato = await TokenAvanzado.deploy(1000);
    expect(await contrato.balanceOf(owner.address)).to.equal(1000);
  });

  it("Debe transferir tokens entre cuentas", async function () {
    const [owner, addr1] = await ethers.getSigners();
    const TokenAvanzado = await ethers.getContractFactory("TokenAvanzado");
    const contrato = await TokenAvanzado.deploy(1000);
    await contrato.transfer(addr1.address, 200);
    expect(await contrato.balanceOf(addr1.address)).to.equal(200);
  });
});
