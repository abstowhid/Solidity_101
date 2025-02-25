// A property of address {means must use with address} [to check the balance of the address(wallet)]

/*
Expression	Meaning

this            	    Refers to the contract itself.
address(this)	        Converts the contract into an address type.
address(this).balance	Gets the total balance stored in the contract.(whole contract)
msg.sender.balance	    Gets the balance of the sender's wallet.(just who call the function)

*/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BalanceExample {
    function checkContractBalance() public view returns (uint) {
        return address(this).balance; // Gets contract's balance
    }

    function checkSenderBalance() public view returns (uint) {
        return msg.sender.balance; // Gets sender's balance
    }
}

// real world example

contract EtherPlayground {
    constructor() payable {} // Allows contract to receive Ether when deployed

    function deposit() public payable {} // Function to receive Ether

    function getContractBalance() public view returns (uint) {
        return address(this).balance; //this function is storing and returning the Contract's balance 
    }

    function getMyBalance() public view returns (uint) {
        return msg.sender.balance; // Sender's wallet balance(who call the function is the sender[will send])
    }
}

