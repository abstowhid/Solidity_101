// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract ThisIsAContract{
//simple mapping
mapping (address=>uint) public  owner;
function setS(address _owner,uint _amount) public {
    owner[_owner]=_amount;
}
function getS(address _owner) public view returns (uint){
return owner[_owner];
}
//another simple mapping
mapping (address=>uint) public boss;
function setB(uint _amountValue) public {
    boss[msg.sender]=_amountValue; // msg.sender is the address of the owner who make transacts
    //important =>>> this msg.sender return a  " address" . so instead manual addrres for owner we can use that,, """but it always must be the same as the keyType""
}


}

// mapping( keyType => valueType) public mappingName;

//mappingName[]= value;   {when i try to acces for anything}
//[]    =must be same type as Keytype
//value= must be same as valueType

//key will define everything
//value will be returned via key reference

//most case: naming the mapping depends on the  valu( actuaally value defining what?the balance)
//key type is the main input here; it is the reference;and value is the thing i want to store;
