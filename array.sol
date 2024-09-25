//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract array_practice{
    uint256[] arr;
    function push(uint _value) public {
        arr.push(_value);
    }
    function get() public view returns(uint256[] memory){
        return arr;
    }
    function length() public view returns(uint256){
        return arr.length;
    }
}