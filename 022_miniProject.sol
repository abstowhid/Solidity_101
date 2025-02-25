// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract MiniProject{
    string public TVBrand;
    bool public isLED;
    uint public price;
    bool public isOn;
    function start1() public view virtual   returns (string memory,string memory){
return ("","");
    }
    function stop1() public view virtual  returns(string memory){
        return "";
    }
}
contract nested1 is MiniProject{
constructor(){
    TVBrand="walton";
    price=10000;
    isLED=true;
    isOn=true;
}
modifier onlyOn(){
    require(isOn,"tv must be on");
    _;
}
function on() public {
    isOn=true;
}
function off() public {
    isOn=false;
}
    function start1() public view override onlyOn() returns (string memory,string memory){
return ("tv is on",TVBrand);
    }
    function stop1() public view override  onlyOn() returns(string memory){
        return "Tv already stoped";
    }
}
