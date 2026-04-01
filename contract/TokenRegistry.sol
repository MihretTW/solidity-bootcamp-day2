// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenRegistry {

    struct Token {
        string name;
        string symbol;
        address owner;
        bool isActive;
    }

    mapping(uint256 => Token) public tokens;
    uint256[] public tokenIds;
    uint256 private nextid = 1;

    
    event TokenRegistered(uint256 id, string name, string symbol, address owner);
    function registerToken(string memory name, string memory symbol) public {

       
        require(bytes(name).length > 0, "Name cannot be empty");
        require(bytes(symbol).length > 0, "Symbol cannot be empty");

        uint256 id = nextid;

        tokens[id] = Token({
            name: name,
            symbol: symbol,
            owner: msg.sender,
            isActive: true
        });

        tokenIds.push(id);
        nextid++;

        emit TokenRegistered(id, name, symbol, msg.sender);
    }

    function deactivateToken(uint256 id) public {

       
        require(tokens[id].owner != address(0), "Token does not exist");
        require(tokens[id].owner == msg.sender, "Not the owner");
        tokens[id].isActive = false;
    }

    function getToken(uint256 id) public view returns (
        string memory,
        string memory,
        address,
        bool
    ) {
        Token memory t = tokens[id];
        return (t.name, t.symbol, t.owner, t.isActive);
    }

    function getAllTokenIds() public view returns (uint256[] memory) {
        return tokenIds;
    }
}