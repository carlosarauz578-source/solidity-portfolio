const { expect } = require("chai");

describe("CounterNuevo", function () {
  let counter;

  beforeEach(async function () {
    const CounterNuevo = await ethers.getContractFactory("CounterNuevo");
    counter = await CounterNuevo.deploy();
    await counter.deployed();
  });

  it("Debe iniciar en cero", async function () {
    expect(await counter.getCount()).to.equal(0);
  });

  it("Debe incrementar correctamente", async function () {
    await counter.increment();
    expect(await counter.getCount()).to.equal(1);
  });

  it("Debe decrementar correctamente", async function () {
    await counter.increment();
    await counter.decrement();
    expect(await counter.getCount()).to.equal(0);
  });
});
