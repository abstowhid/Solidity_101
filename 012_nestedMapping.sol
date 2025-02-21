// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract ThisIsAContract{
// nested mapping
mapping (address=>mapping (address=>uint)) public mainOwner;
function set(address _mainOwner, address _seconOwner, uint _amout) public {
    mainOwner[_mainOwner][_seconOwner]=_amout;   //starting track from the main owner to second owner's spending amount
}
function get(address _mainOwner, address _seconOwner) public view returns(uint){
    return mainOwner[_mainOwner][_seconOwner];
}


}

//fundamental is same as normal mapping( key, value) 
//difference =>  2 keys ,

//
//mappingName[][]= value;