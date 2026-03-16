// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RegistroEventos {
    event Registrado(string mensaje);

    function registrar(string memory mensaje) public {
        emit Registrado(mensaje);
    }
}
	
