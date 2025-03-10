//function calling inside a function
// 1. with this
// 2. without this
//note=> i. we can assign new parameter value{inside ()} or ii. just call the funtion



// 1.Using this + Dot(.) => external =>visiable in another contract too

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

//2.(without this) => visiable only in this contract

contract FunctionExample {
    uint public storedData;
    
    // Function to set data
    function setData(uint x) public {
        storedData = x;
    }
    
    // Function to get data
    function getData() public view returns (uint) {
        return storedData;
    }

    // Function to call another function inside
    function updateData(uint x) public {
        setData(x); // Calling the setData function inside another function
    }
}



/*
Using this for Function Calls:
can call functions of the contract using this, but it creates an external call, consuming more gas.
it is more expensive  gass fee to use and call function cz it's external
✅ Use case: When a contract interacts with itself like an external caller.
*/

// also we can use parameter value inside () while calling in another function{same as with this }