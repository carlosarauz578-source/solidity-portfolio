// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenAvanzado {
    string public nombre = "TokenAvanzado";
    string public simbolo = "TA";
    uint8 public decimales = 18;
    uint public totalSupply;
    address private owner;

    mapping(address => uint) public balance;

    event Transferencia(address from, address to, uint valor);

    modifier onlyOwner() {
        require(msg.sender == owner, "No eres el propietario");
        _;
    }

    constructor(uint _supplyInicial) {
        owner = msg.sender;
        totalSupply = _supplyInicial;
        balance[msg.sender] = _supplyInicial;
    }

    function transfer(address _to, uint _valor) public returns (bool) {
        require(balance[msg.sender] >= _valor, "Saldo insuficiente");
        balance[msg.sender] -= _valor;
        balance[_to] += _valor;
        emit Transferencia(msg.sender, _to, _valor);
        return true;
    }

    function mint(uint _cantidad) public onlyOwner {
        totalSupply += _cantidad;
        balance[owner] += _cantidad;
    }
}
