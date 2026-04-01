# TokenRegistry Smart Contract

## Overview

This project implements a simple Solidity smart contract that allows users to register and manage tokens.

Each token has:

* Name
* Symbol
* Owner address
* Active status

---

## Features

### 1. Register Token

Users can register a new token with:

* name
* symbol

Rules:

* Name and symbol cannot be empty
* Each token gets a unique auto-incremented ID
* Token is active by default

---

### 2. Deactivate Token

* Only the token owner can deactivate it
* Once deactivated, `isActive` becomes false

---

### 3. Get Token Details

Retrieve:

* name
* symbol
* owner
* status

---

### 4. Get All Token IDs

Returns a list of all registered token IDs

---

## Bonus Features

* Event emitted when a token is registered
* Input validation for name and symbol
* Ownership check for secure deactivation

---

## Contract Functions

* `registerToken(string name, string symbol)`
* `deactivateToken(uint256 id)`
* `getToken(uint256 id)`
* `getAllTokenIds()`

---

## How to Run

1. Open Remix IDE
2. Create a new file `TokenRegistry.sol`
3. Paste the contract code
4. Compile using Solidity ^0.8.0
5. Deploy the contract
6. Test functions from the UI

---

## Example Usage

* Register token: `"Ethereum", "ETH"`
* Get token: `id = 1`
* Deactivate token using the same account

---

## Project Structure

```
solidity-bootcamp/
└── day2/
    ├── TokenRegistry.sol
    └── README.md
```

---

## Notes

* Token IDs start from 1
* Only owners can deactivate their tokens
* Invalid inputs are rejected using `require`

---

