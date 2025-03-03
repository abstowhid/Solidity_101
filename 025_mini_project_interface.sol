// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
interface II {
    function set(address add,uint amount) external ;
    function get (address add) external  view returns (uint);
    function transferB(address to, uint amount) external ;

    
}
contract Main is II{
    mapping (address=>uint) balances;
    function set(address add,uint amount) external   {
balances[add]=amount;
    }
    function get (address add) external  view   returns (uint){
        return balances[add];
    }
    function transferB(address to, uint amount) external   {
        balances[to]+=amount;
        balances[msg.sender]-=amount;
    }
  
}
contract Com{
    II public token1;  // Using II as a reference for another contract
    constructor(address ownAdd){  // address of Main(where i implemented intercae)
        token1=II(ownAdd); // Connect to existing contract that follows II (by the contracts deploy address) II(ownAdd) tells Solidity that ownAdd is a contract that implements II.
        //It assigns token1 to an existing contract at ownAdd that follows the II interface.
        //so constructor say that ,now i can easily acces the functions by token1(every time i don't need to II(ownAdd)
    }
    function gets(address add) external  view returns (uint){
return token1.get(add);
    }
}
//com - II , II - Main(road map) - means connecting
//================================================================================================
//description:
Key Takeaways:

    To enforce rules: contract Main is II {}
    To interact externally: II public token1;
    To access extra functions: Use Main directly in Com (Main public token1;)


//Contract=>
//so first one is for setting up and defining structure , and 2nd one is for use them
//
Real-World Analogy 🎯

1️⃣ First One (Implementing Interface) → Like creating a blueprint for a car model. 🚗

    All cars must have steering, wheels, and an engine (functions).

2️⃣ Second One (Using Interface) → Like a driver using a car. 🏎️

    The driver just needs to know how to use the steering and accelerator (functions), not how the engine works internally.

//
//constructor=>
//so constructor say that ,now i can easily acces the functions by token1(every time i don't need to II(ownAdd)
//
// Contract+interface=>
Why Do We Need a Contract to Implement the Interface?

An interface (II) only declares function signatures, but it does not contain the actual code inside those functions.

✅ Interfaces = Just a set of rules (function declarations).
✅ Contracts implementing interfaces = Provide the real logic (actual function definitions).
