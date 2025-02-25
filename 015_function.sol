//Basic functions only here
//fucntion totally depends on (view pure , ,)(public private external internal)(input and return)
//get & set [primary]
//combined [most in real use cases]
//set function set or change a value of state variable
//get function return something(a variable or anything i want)
//combined at a time take input(set) and do calculation and return(get) something


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ThisIsAContract{

// function Fname(parameters_with_datatype) some_modifiers_based_on_purpose returns(data_type_of_return){code}
//returns() sequence must match with the return inside the function

uint public numbner;
function set(uint _value) public {
    numbner=_value;
}
function get() public view returns (uint){
    return numbner;
}

}





contract FunctionExample {


    //some function examples
    address public owner;

    constructor() {
        owner = msg.sender; // Set deployer as the owner
    }

    //get 🔹 Simple function that returns a message
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

