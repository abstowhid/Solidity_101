// Interface is like a prototype or a Blue print 
//interface just "Declare" function , don't call them
// 1. declare 2.use different place(with inheritence or like a object)

//=======================  Why interface?  ==================
// How many times i want i can use them in different contract 
// benifits: i don't need to declare those function again and again( declare only once & inherit as i want)

//=============================================================================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
interface IToken {
    //fucntion declare (always "external") because it will be used externally
    function getAddres() external view returns(address);
    function transferBalance(address to, uint amount) external ;
    function mint(address to, uint amount) external view returns (bool);

}

//connect and use:
//1. use inheritence
//2. use like a object

contract First is IToken {
    //now override the function to avoid error
}

contract second {
    IToken private fullToken;
    //then use it
}