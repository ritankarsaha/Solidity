// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ENS{

    uint[] public numbers;


    function addNumber(uint _number) public{

        numbers.push(_number);
    }

    function getNumbersLength() public view returns (uint){

        return numbers.length;
    }

    function getNumber(uint index) public view returns (uint){

        return numbers[index];
    }


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