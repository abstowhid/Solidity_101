// msg.sender indicated who call the  function(if different function call different people then every different function has a different msg.sender) that means who call the function is the msg.sender of the function.
//msg.sender is who make the transaction of a function(each function can have different msg.sender{means the addres will make the transaction is the .sender})
//using constructor we can define the owner of the contract who make the first transactions( deploy the contract) because only owner call the constructor function(as owner called it so the msg.sender is owner so that's it we found the owner)


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SenderExample {
    address public owner; // Stores the owner's address

    // Constructor sets the deployer's address as the owner
    constructor() {
        owner = msg.sender; // msg.sender is the address that deployed the contract
    }

    // Function to return the caller's address
    function getCallerAddress() public view returns (address) {
        return msg.sender; // Returns the address of the account calling this function
    }

    // Function to update the owner (only the current owner can change it)
    function changeOwner(address newOwner) public {
        require(msg.sender == owner, "Only the owner can change ownership!");
        owner = newOwner;
    }
}


//overall with msg.sender
//who Deploy the code is the Owner(main owner of the whole contract)
//whos make the other transactions are the sub-owner of the each function only