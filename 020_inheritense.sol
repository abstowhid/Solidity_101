// conecting the contracts 
//acces and edit same function=> virtual , override


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingDemo {
uint public number=59087;
    function whats() public  view virtual   returns (address){
        return (msg.sender);
    }

}
contract second is ErrorHandlingDemo{
    function get() public view returns (uint){
    return number; }
    function whats() public   view override returns (address){
        return (msg.sender);
    }

}