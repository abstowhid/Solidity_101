// A property of address {means must use with address} [to check the balance of the address(wallet)]

/*
Expression	Meaning

this            	    Refers to the contract itself.
address(this)	        Converts the contract into an address type.
address(this).balance	Gets the total balance stored in the contract.
msg.sender.balance	    Gets the balance of the sender's wallet.

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
