//function modifier is a  conditional function that store a condition and implement it in various function 
// by doing this, it reduce DRY ( that means we don't need to write the same condition in different functions)
//procces=> we will have a modifier name and we will use the name in different function.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract ThisIsAContract{
address public owner;

    // Constructor sets the deployer as the owner
    constructor() {
        owner = msg.sender;
    }

    // Modifier to restrict function access to only the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner!");
        _; // underscore(_) represent the body of the code( the code of the fucntion where this modifier will be used)
    }

    // Function that only the owner can call
    function ownerOnlyFunction() public onlyOwner {
        // Some logic that only the owner can execute
    }

    // Function to change the owner (only owner can call this)
    function changeOwner(address newOwner) public onlyOwner {
        owner = newOwner;
    }
}

//do not un comment
// address public rowner;
// constructor(){
//  rowner=msg.sender; 
// }
// modifier firstModifier{
// require(msg.sender==rowner, "you can't . only the owner can call this function");
//     _; //indicates the whole code of the function that need to be executed
// }
//now i can use it in different function and it will check the condition and will run the code with the name
