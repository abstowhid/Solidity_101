// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract ThisIsAContract{
//fix array
uint[4] public fixedArray=[3,5,3,7];

function getF(uint _index) public view returns (uint) {
  return   fixedArray[_index];
}

//dynamic
uint[] public dynamicArray;
function set(uint _value) public {
    dynamicArray.push(_value);
}
function get(uint _index) public view returns (uint){
    return dynamicArray[_index];
}
}