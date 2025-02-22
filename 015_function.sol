//get & set
//combined (most in real use cases)


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionExample {


    //some function examples
    address public owner;

    constructor() {
        owner = msg.sender; // Set deployer as the owner
    }

    // 🔹 Simple function that returns a message
    function sayHello() public pure returns (string memory) {
        return "Hello, Blockchain!";
    }

    //get 🔹 Function that returns the caller's address
    function getCaller() public view returns (address) {
        return msg.sender;
    }

    //get&set combined 🔹 Function that adds two numbers (pure function)
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    //set 🔹 Function that updates the owner (only owner can change)
    function changeOwner(address newOwner) public {
        require(msg.sender == owner, "Only owner can change ownership!");
        owner = newOwner;
    }
}
