// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "contracts/inheritance/parent.sol";

contract Car is Vehicle {


    uint public doors;

    constructor(string memory _brand, uint _doors) Vehicle(_brand){

        doors = _doors;


    }

    function description () public pure override returns (string memory) {
        

        return("This is a car which is a type of a vehicle");
    }

    
}