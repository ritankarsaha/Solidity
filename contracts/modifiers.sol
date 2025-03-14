// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Example{

    address public owner;

    constructor(){

        owner = msg.sender;
    }


    modifier onlyOwner(){
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    function setOwner(address newOwner) public view onlyOwner{

        newOwner = owner;
    }

    function sum (uint a, uint b) public view onlyOwner returns(uint){

        return a+b;
    }




}