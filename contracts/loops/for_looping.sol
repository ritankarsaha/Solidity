// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract NumberAdder {
    function addNumbers(uint256[] memory _numbers) public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < _numbers.length; i++) {
            sum += _numbers[i];
        }
        return sum;
    }
}
