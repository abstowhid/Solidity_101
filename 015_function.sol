//fucntion totally depends on (view pure , ,)(public private external internal)(input and return)
//get & set [primary]
//combined (most in real use cases)
//set function set or change a value of state variable
//get function return something(a variable or anything i want)
//combined at a time take input(set) and do calculation and return(get) something


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

