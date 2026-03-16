// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Propietario {
    address public propietario;

    constructor() {
        propietario = msg.sender;
    }
}
