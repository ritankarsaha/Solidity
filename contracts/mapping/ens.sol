// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ENS{


     mapping(address => string) private users;

    constructor(){

    }

    function signUp(string memory userName) public{
        users[msg.sender] = userName;
    } 

    function getName() public view returns (string memory){

        return users[msg.sender];
    }
}