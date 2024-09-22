//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract etherToWallet{
    receive() external payable{}

    address owner = msg.sender;

    function withdraw(uint _amount) public{
        require(msg.sender == owner,"You must have to be a owner to call this function.");
        payable(msg.sender).transfer(_amount);
    }

    function getEther() public view returns(uint){
        return address(this).balance;
    }

    
}