// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ENS{

    uint[3] public numbers;


    function setNumbers(uint _num1, uint _num2, uint _num3) public {

        numbers[0] = _num1;
        numbers[1] = _num2;
        numbers[2] = _num3;

    }

    function getNumbers(uint index) public view returns(uint){
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