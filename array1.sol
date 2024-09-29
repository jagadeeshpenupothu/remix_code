//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

//array practice question, delete a elemet in arry by index value

contract arrayRemoveElementsByShifiting{
    uint256[] arr = [1,2,3,4,5];
    function RemoveIndexValue(uint256 _index) public{
        require(_index < arr.length, "give another");
        for (uint256 i = _index; i < arr.length-1; i++){
            arr[i] = arr[i+1];
        }
        arr.pop();
    }


}