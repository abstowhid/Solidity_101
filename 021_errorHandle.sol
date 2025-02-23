//require
//revert
//assert



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingDemo {
    address public owner;
    uint256 public balance;

    constructor() {
        owner = msg.sender;
        balance = 100;
    }

    // Using require to validate user input
    function withdraw(uint256 amount) public {
        require(msg.sender == owner, "Not the owner!"); // Ensuring only the owner can withdraw
        require(amount <= balance, "Insufficient balance!"); // Checking sufficient funds

        balance -= amount;
    }

    // Using revert for a manual error trigger
    function transfer(uint256 amount) public {
        if (amount > balance) {
            revert("Not enough funds for transfer!");
        }

        balance -= amount;
        // Simulating transfer logic
    }

    // Using assert to verify internal logic
    function checkInvariant() public view {
        assert(balance >= 0); // Ensuring balance never goes negative
    }
}
