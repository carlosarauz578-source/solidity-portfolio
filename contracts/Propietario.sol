// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Propietario {
    address private owner;

    // Constructor: asigna como dueño al que despliega el contrato
    constructor() {
        owner = msg.sender;
    }

    // Modifier: restringe funciones solo al dueño
    modifier onlyOwner() {
        require(msg.sender == owner, "No eres el propietario");
        _;
    }

    // Función para leer el dueño actual
    function leerOwner() public view returns (address) {
        return owner;
    }

    // Función restringida: solo el dueño puede ejecutar
    function accionPrivada() public onlyOwner {
        // Aquí puedes poner lógica especial
    }

    // Función para transferir propiedad a otro address
    function transferirOwnership(address nuevoOwner) public onlyOwner {
        owner = nuevoOwner;
    }
}
