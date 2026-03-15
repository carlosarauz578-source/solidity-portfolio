// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RegistroEventos {
    string private dato;

    event DatoActualizado(string nuevoDato, address actualizadoPor);

    function actualizarDato(string memory _nuevoDato) public {
        dato = _nuevoDato;
        emit DatoActualizado(_nuevoDato, msg.sender);
    }

    function leerDato() public view returns (string memory) {
        return dato;
    }
}
