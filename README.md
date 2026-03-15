# 🚀 Portafolio Blockchain – Solidity

Este repositorio documenta mi progreso en el desarrollo de **contratos inteligentes con Solidity** y el uso del framework **Hardhat**.  
El portafolio está organizado en fases, mostrando una evolución clara desde conceptos básicos hasta contratos avanzados con roles, permisos y eventos.

---

## 📖 Índice
1. [Fase 0 – Setup inicial](#fase-0--setup-inicial)
2. [Fase 1 – Contratos básicos](#fase-1--contratos-básicos)
3. [Fase 2 – Configuración Hardhat](#fase-2--configuración-hardhat)
4. [Fase 3 – Contratos avanzados](#fase-3--contratos-avanzados)
5. [Próximos pasos](#próximos-pasos)
6. [Estructura del repositorio](#estructura-del-repositorio)
7. [Autor](#autor)

---

## 🔹 Fase 0 – Setup inicial
Configuración del entorno de trabajo con **Hardhat** y TypeScript:
- `hardhat.config.ts` → configuración principal.
- `package.json` / `package-lock.json` → dependencias.
- `tsconfig.json` → soporte para TypeScript.
- `.gitignore` → exclusiones de archivos innecesarios.

---

## 🔹 Fase 1 – Contratos básicos
Contratos iniciales para comprender la sintaxis de Solidity y la lógica fundamental:
- **Contador.sol** → Incrementa y lee un valor almacenado.
- **HolaBlockchain.sol** → Primer contrato de prueba con mensajes.
- **TokenSimple.sol** → Token ERC20-like básico para balances y transferencias.

---

## 🔹 Fase 2 – Configuración Hardhat
Implementación de un entorno profesional de desarrollo:
- Carpeta `contracts/` para contratos inteligentes.
- Carpeta `scripts/` para despliegues automatizados.
- Carpeta `test/` para pruebas unitarias.
- Integración con **TypeScript** para mayor robustez.

---

## 🔹 Fase 3 – Contratos avanzados
Contratos con funcionalidades extendidas:
- **Propietario.sol** → Gestión de roles y permisos.
- **RegistroEventos.sol** → Almacenamiento y consulta de eventos en blockchain.
- **TokenAvanzado.sol** → Token con roles, restricciones y emisión controlada.

---

## 🔹 Próximos pasos
- **Fase 4**: Automatización de pruebas con Hardhat + Chai.  
- **Fase 5**: Despliegues en testnets (Goerli, Sepolia).  
- **Fase 6**: Integración con frontend (React + Web3).  

---

## 📂 Estructura del repositorio
