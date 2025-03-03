//The msg object provides transaction-specific details like the sender's address, value sent, and function call data
// msg.sender indicated who call the  function(if different function call different people then every different function has a different msg.sender) that means who call the function is the msg.sender of the function.
// common properties of msg => 
/*

Property	     Type	    Description

msg.sender   	address	   Address of the caller (EOA or smart contract).
msg.value	    uint	   Amount of Ether (in wei) sent with the transaction.
msg.data	   bytes	   Raw calldata (function name + parameters in bytes).
msg.sig	       bytes4	   First 4 bytes of msg.data, representing the function selector.
msg.gas	        uint	   (Deprecated) Amount of gas available for the transaction.

*/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MsgSenderExample {
    function whoIsCaller() public view returns (address) {
        return msg.sender; // Returns the caller's address
    }
}

contract MsgValueExample {
    function payMe() public payable {
        require(msg.value > 0, "Send some Ether!"); // Checks if Ether was sent
    }

    function getBalance() public view returns (uint) {
        return address(this).balance; // Contract's balance
    }
}

contract MsgDataExample {
    function checkData() public pure returns (bytes memory) {
        return msg.data; // Returns raw function call data
    }
}


contract MsgSigExample {
    function getFunctionSelector() public pure returns (bytes4) {
        return msg.sig; // Returns function selector
    }
}

