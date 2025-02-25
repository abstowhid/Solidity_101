//mainly for struct,block,msg,function call


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


//1. Accessing Struct Members

// Define a struct
struct Person {
    string name;
    uint age;
}

contract Example {
    Person public p;

    function setPerson(string memory _name, uint _age) public {
        p = Person(_name, _age); // Assign values
    }

    function getPerson() public view returns (string memory, uint) {
        return (p.name, p.age); // Access struct properties using dot
    }
}


//2. Accessing Contract State Variables

contract MyContract {
    uint public data = 10;

    function getData() public view returns (uint) {
        return this.data; // Using 'this' is optional
    }
}



//3. Calling Contract Functions

contract MyContract1 {
    function sayHello() public pure returns (string memory) {
        return "Hello, World!";
    }

    function callHello() public pure returns (string memory) {
        return this.sayHello(); // Using dot to call function
    }
}


//4. Accessing Elements in Enums

contract Example1 {
    enum Status { Pending, Shipped, Delivered }

    Status public currentStatus;

    function setStatusToDelivered() public {
        currentStatus = Status.Delivered; // Use dot to access enum value
    }
}


//5. Accessing Library Functions

library Math {
    function add(uint a, uint b) internal pure returns (uint) {
        return a + b;
    }
}

contract Example2 {
    using Math for uint;

    function sum(uint x, uint y) public pure returns (uint) {
        return x.add(y); // Using dot to call library function
    }
}


//6.Accessing msg, tx, and block Global Variables

contract Example {
    function getSender() public view returns (address) {
        return msg.sender; // Use dot to access msg.sender
    }

    function getBlockNumber() public view returns (uint) {
        return block.number; // Use dot to get block number
    }
}

//7. Accessing Mappings (Indirectly)

contract Example {
    mapping(address => uint) public balances;

    function setBalance(uint _amount) public {
        balances[msg.sender] = _amount;
    }

    function getBalance() public view returns (uint) {
        return balances[msg.sender]; // No dot needed for mapping keys
    }
}


//8. Accessing Structs Inside Mappings

contract Example {
    struct User {
        string name;
        uint balance;
    }

    mapping(address => User) public users;

    function setUser(string memory _name, uint _balance) public {
        users[msg.sender] = User(_name, _balance);
    }

    function getUser() public view returns (string memory, uint) {
        return (users[msg.sender].name, users[msg.sender].balance); // Using dot
    }
}


