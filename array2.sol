//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract removeElemets{
    // Remove array element by copying last element
    // into to the place to remove

    uint256[] arr = [1,2,3,4,8];

    function lastValue(uint index) public{
        //update the value of the give index with last element in array
        arr[index] = arr[arr.length-1];
    }

    function getFullArray() public view returns(uint[] memory){
        return arr;
    }

}