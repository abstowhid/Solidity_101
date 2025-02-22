//a event is like a console.log in javascript
//event send a notification


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract ThisIsAContract{
//event eventName(variables_data_types);//more than one
//emit eventName(assign_variables_value_dynamcally);// with sequence

event newEvent(uint _numberValue);
function Fname(uint _number)public {
    emit newEvent(_number); //now value of _numberValue is _number
}
/* output in terminal:

[
	{
		"from": "0xD70cc1336ecf0B8FaD791e010CA6aC5F82980A38",
		"topic": "0xbc82f62526a082199ec2d4a7c9d87b5894437f869dd10e79d030d1344a23e2a9",
		"event": "newEvent",
		"args": {
			"0": "53534",
			"_numberValue": "53534" //i gave input this value of _number
		}
	}
]
*/


//another event
uint public numbers;
event newEvent(uint _numberValue);
function Fname(uint _number)public {
    numbers+=_number;
    emit newEvent(numbers); //now value of _numberValue is _number
}
//another event

}
contract EventExample {
    // Declare an event
    event OwnershipTransferred(address indexed oldOwner, address indexed newOwner);

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Function to change owner and emit an event
    function changeOwner(address newOwner) public {
        require(msg.sender == owner, "Only owner can change ownership!");
        
        // Emit the event before changing owner
        emit OwnershipTransferred(owner, newOwner);
        
        owner = newOwner;
    }
}