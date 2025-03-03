//1.interface define the blue print
//2.contract implement the blue print(give functionality)
//3.use like a object interect and finally do operation with it.
//=====================================================================================
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
    // here goes the functoinality
}

contract second {
    IToken public fullToken;  //a reference for a contract Note: must use constructor
    //then use it & call function
}

//1.interface define the blue print
//2.contract implement the blue print
//3.use like a object interect and finally do operation with it.
