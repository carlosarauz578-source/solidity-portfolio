// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenSimple {
    string public nombre = "TokenSimple";
    string public simbolo = "TS";
    uint8 public decimales = 18;
    uint public totalSupply;

    mapping(address => uint) public balance;

    constructor(uint _supplyInicial) {
        totalSupply = _supplyInicial;
        balance[msg.sender] = _supplyInicial;
    }

    function transfer(address _to, uint _valor) public returns (bool) {
        require(balance[msg.sender] >= _valor, "Saldo insuficiente");
        balance[msg.sender] -= _valor;
        balance[_to] += _valor;
        return true;
    }
}
