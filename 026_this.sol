/*
In Solidity, this refers to the current smart contract instance. It is often used when you need the contract’s address within its own code.
*/

/*
Expression  	    Type	             Description

this	            address	        The address of the current contract.
address(this)   	address	        Explicitly converts this into an address.

*/


1️⃣ this – Refers to the Contract Itself
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ThisExample {
    function getContractAddress() public view returns (address) {
        return address(this); // Returns the contract's own address
    }
}


2️⃣ Using this for Function Calls

contract ThisFunctionExample {
    function normalCall() public pure returns (string memory) {
        return "Hello, Solidity!";
    }

    function externalCall() public view returns (string memory) {
        return this.normalCall(); // Calls `normalCall()` externally
    }
}


3️⃣ Sending Ether to this

contract ThisPayableExample {
    constructor() payable {} // Allows contract to receive Ether

    function sendEtherToSelf() public payable {
        payable(address(this)).transfer(msg.value); // Transfers Ether to itself
    }

    function getBalance() public view returns (uint) {
        return address(this).balance; // Returns contract balance
    }
}