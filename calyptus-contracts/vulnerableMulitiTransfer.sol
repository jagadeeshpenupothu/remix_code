//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VulnerableMultiTransfer {
    mapping(address => bool) public owners;
    address[] public ownerList;

    constructor (address[] memory _owners){
        require(_owners.length>0, "Must have at least one owner");
        for (uint i = 0; i < _owners.length; i++){
            owners[_owners[i]] = true;
            ownerList.push(_owners[i]);
        }
    }

    function multiTransfer(address[] memory to, uint256[] memory amounts, bytes[] memory signatures) public{
        for (uint256 i =0; i < ownerList.length; i++){
            bytes memory signature = signatures[i];
            require(signature.length>0, "Invalid signature");
        }
        for (uint256 i =0; i < to.length; i++){
            payable(to[i]).transfer(amounts[i]);
        }
    }
    
}