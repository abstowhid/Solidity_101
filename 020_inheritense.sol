// conecting the contracts 
//acces and edit same function=> virtual , override


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingDemo {
    address public something;
uint public number=59087;
    function whats() public  virtual   returns (address){
        return something;
    }

}
contract second is ErrorHandlingDemo{
    function get() public view returns (uint){
    return number; }
    function whats() public    override returns (address){
        return (something=msg.sender);
    }

}