//one is about the whole contract another is about the function caller

/*
Expression	                Refers To	                     Returns Balance Of
address(this).balance	The smart contract itself	            The contract's balance (how much Ether it holds).
msg.sender.balance	    The person/wallet calling the               function	The caller's balance (how much Ether they have).
*/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BalanceTest {
    constructor() payable {} // Allows contract to receive Ether at deployment

    function deposit() public payable {} // Allows users to send Ether

    function getContractBalance() public view returns (uint) {
        return address(this).balance; // Contract's total balance
    }

    function getMyBalance() public view returns (uint) {
        return msg.sender.balance; // Sender's balance
    }
}
