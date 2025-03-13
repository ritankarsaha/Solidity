// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Calculator{
    uint num = 0;

    constructor(uint _num) {
        num = _num;
    }

    function add(uint _value) public{
        num += _value;
    }

    function sub(uint _value) public{
        num -= _value;
    }

    function multiply(uint _value) public{

        num*=_value;
    }

    function divide(uint _value ) public{
        require(_value !=0 , "Number cannot be divided by 0");
        num /=  _value;

    }

    function getNum() public view returns (uint){
        return num;
    }




}

