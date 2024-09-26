//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract array_practice{
    uint256[] arr;
    function push(uint _value) public {
        arr.push(_value);
    }

    //get_full_arry function gets the full arr array
    //in return we need to specify the return type memory
    //because we are returning the entire array, for this 
    //solidity first need to copy the entire state varible in 
    //memory and then print it.
    function get_full_array() public view returns(uint256[] memory){
        return arr;
    }

    //get_array_at_index gets the value at given index of arr array
    //in returns we no need to mention the memory because it only single
    //element in the array (permitive type), so solidity automatically
    //returns the value.
    function get_array_at_index(uint i) public view returns(uint256){
        return arr[i];
    }
    function length() public view returns(uint256){
        return arr.length;
    }

    function push_zero() public{
        arr.push();
    }

    function pop_element() public{
        arr.pop();
    }

    //delete_element delete the value at given inde, but not deleting the 
    // shell index postion (shell)
    function delete_elemet(uint _i) public{
        delete arr[_i];
    }
}