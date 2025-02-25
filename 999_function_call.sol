/*
Using this for Function Calls:
can call functions of the contract using this, but it creates an external call, consuming more gas.
it is more expensive  gass fee to use and call function cz it's external
*/

// 1.Using this + Dot(.)
//✅ Use case: When a contract interacts with itself like an external caller.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ThisFunctionExample {
    function normalCall() public pure returns (string memory) {
        return "Hello, Solidity!";
    }

    function externalCall() public view returns (string memory) {
        return this.normalCall(); // Calls `normalCall()` externally
    }
}


