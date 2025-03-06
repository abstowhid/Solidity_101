// details about the block of blockchain
//The block object provides information about the current block on the blockchain, including the block number, timestamp, gas limit, and miner address.

/*

Property	        Type	    Description

block.number    	uint	    The current block number.
block.timestamp 	uint	    The timestamp (Unix time) when the block was mined.
block.difficulty	uint	    The mining difficulty of the current block. (Deprecated in Solidity 0.8.x, use block.prevrandao instead)
block.gaslimit  	uint	    The maximum gas allowed in the current block.
block.coinbase	    address     payable	The address of the miner (validator) who mined the block.
block.chainid	    uint	    The unique ID of the blockchain network.
block.prevrandao	uint	    A randomness value derived from the previous block, replacing block.difficulty. (Introduced in Solidity 0.8.18)

*/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BlockNumberExample {
    function getBlockNumber() public view returns (uint) {
        return block.number; // Returns the current block number
    }
}

contract BlockTimestampExample {
    function getBlockTimestamp() public view returns (uint) {
        return block.timestamp; // Returns block timestamp
    }
}
contract BlockGasLimitExample {
    function getGasLimit() public view returns (uint) {
        return block.gaslimit; // Returns the gas limit of the block
    }
}


contract BlockCoinbaseExample {
    function getMinerAddress() public view returns (address) {
        return block.coinbase; // Returns miner's address
    }
}

contract BlockChainIdExample {
    function getChainId() public view returns (uint) {
        return block.chainid; // Returns the current blockchain's ID
    }
}

contract BlockPrevrandaoExample {
    function getRandomValue() public view returns (uint) {
        return block.prevrandao; // Returns a pseudo-random value
    }
}