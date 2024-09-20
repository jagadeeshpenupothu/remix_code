// // SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract EtherWallet {

    // excution process of this contract - click deploy -> add ether value in value section -> click transact in CALLDATA section
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    //Below recieve function is used to get the inputs to the contract.
    receive() external payable {}

    function withdraw(uint256 _amount) external {
        require(msg.sender == owner, "caller is not owner");
        payable(msg.sender).transfer(_amount);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}