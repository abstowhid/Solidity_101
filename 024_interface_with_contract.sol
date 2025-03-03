//on this porject:
/*
1. set a balance in mapping
2.view the balance
3. transfer the blalance and decrease sender balance and increase receriver balance
*/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
interface IToken {
    //fucntion declare (always "external") because it will be used externally
    function setBalance(address youraddress,uint amount) external ; //to set
    function getBalance(address yourAddress) external view returns(uint); // to view
    function transferBalance(address to, uint amount) external ; // to send
    function mint(address to, uint amount) external  returns (bool); // to receive

}

contract First is IToken {
    address private owner;
    mapping (address=>uint) private  balances; //to store blalance// we don't want to show balance of each publicly
    constructor(){
        owner=msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender==owner,"only owner can call this option");
        _;
    }
        function setBalance(address youraddress,uint amount) external override  {
            balances[youraddress]+=amount;
        }

     function getBalance(address yourAddress) external override  view returns(uint){
        return balances[yourAddress];
     }
    function transferBalance(address to, uint amount) external override {
        balances[msg.sender]-=amount; //who call the function is transfering
        balances[to]+=amount; // to to addres is receiving
    }
    function mint(address to, uint amount) external  override returns (bool){
        balances[to]+=amount;
        return true;
    }

}

contract second {
    IToken private fullToken;
    constructor(address ownerad){
        fullToken=IToken(ownerad);
    }
    //then use it

}

//on this porject:
/*
1. set a balance in mapping
2.view the balance
3. transfer the blalance and decrease sender balance and increase receriver balance
*/