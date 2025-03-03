//one and only owner who deploy the contract can call the constructor 
// executes once only and at the begening of the contract
// it defines or assign the initial and real fixed value for anything
//using constructor we can define the owner of the contract who make the first transactions( deploy the contract) because only owner call the constructor function(as owner called it so the msg.sender is owner so that's it we found the owner)


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract ThisIsAContract{
address public owner;
constructor(){
 owner=msg.sender; //it defines that the variable owner's addres(value) always will be the real owner's address(who deploy) 


}
//an super easy example with the owner
function check(address _youradd) public view returns (bool){
    return _youradd==owner; //check true or false(operator check if equal or not (true or false))
}

// Function that only the owner can call
    function ownerOnlyFunction() public view returns (string memory) {
        require(msg.sender == owner, "Not the contract owner!"); 
        return "Hello, Owner!";
    }
//it check if the here msg.sender (who transact) is the same as the owner (who deploy)

}
