// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ifelse{
    function checknumber(uint _number) public pure returns (string memory){
        if(_number < 10)
        return "Small";
        else if(_number == 10)
        return "Number is 10";
        else 
        return "Number is frigging large";

    }
}