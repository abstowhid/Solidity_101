//1.declare
//2.implement in a variable (as array,mapping,parameter)
//3.set and get values like as same as array & mapping (just in place of value , use structName(values)
//

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract EasyGetSetStruct{
    // declare data type
    struct Person{
        string name;
        uint age;
        bool alive;
    }
    //store
    Person public person1;
    //set-1
    function set1(string memory _name,uint _age,bool _alive) public {
        person1 = Person(_name,_age,_alive);
    }
    //set-2
    function set2(string memory _name,uint _age)public {
        person1.name=_name;
        person1.age=_age;
    }
    
    //get
    function get1()public view returns (string memory,uint,bool){
        return (person1.name,person1.age,person1.alive);
    }
}


