//The tx (transaction) object provides details about the transaction itself
// not personallly recomended to use
/*

Property	    Type	        Description

tx.origin	    address	        The original sender of the transaction (Externally Owned Account, EOA).
tx.gasprice 	uint	        The gas price (in wei) used for the transaction.

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TxOriginExample {
    function getTransactionOrigin() public view returns (address) {
        return tx.origin; // Returns the original sender's address
    }
}
/*
Use case: Identifying the original sender of a transaction.

 Security Warning:
Never use tx.origin for authentication because it can be exploited in phishing attacks. Always prefer msg.sender.
*/


contract TxGasPriceExample {
    function getTransactionGasPrice() public view returns (uint) {
        return tx.gasprice; // Returns gas price in wei
    }
}
