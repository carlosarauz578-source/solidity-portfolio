// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HolaBlockchain {
    string private mensaje;

    // Constructor: se ejecuta al desplegar el contrato
    constructor(string memory _mensaje) {
        mensaje = _mensaje;
    }

    // Función para leer el mensaje
    function leerMensaje() public view returns (string memory) {
        return mensaje;
    }

    // Función para actualizar el mensaje
    function actualizarMensaje(string memory _nuevoMensaje) public {
        mensaje = _nuevoMensaje;
    }
}
