// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

contract EventExample{

    event Transfer(address indexed from, address indexed to, uint256 value);


    function transfer(address to, uint256 value) public {
        emit Transfer(msg.sender, to, value);
    }
}