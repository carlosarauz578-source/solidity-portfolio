// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Contador {
    int private valor;

    // Constructor: inicializa el contador en 0
    constructor() {
        valor = 0;
    }

    // Función para leer el valor actual
    function leer() public view returns (int) {
        return valor;
    }

    // Función para incrementar el contador
    function incrementar() public {
        valor += 1;
    }

    // Función para decrementar el contador
    function decrementar() public {
        valor -= 1;
    }
}
