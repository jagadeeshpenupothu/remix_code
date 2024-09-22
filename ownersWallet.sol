//SPDX-License-Identifier:MIT 
pragma solidity ^0.8.26;

contract ownersWallet{
    //a inbuild solidity code to receive ethers the wallet
    receive() external payable{} 

    //defining the the owner, more specifically as the payable owner
    address payable public owner;

    // sets the owner which is deploying the contract in to the blockchain
    constructor() {
        owner = payable(msg.sender);
    }

    //getbalance fucntion, it get the balance of the current contract address
    function getbalance() public view returns(uint){
        return address(this).balance;
    }

    //withdraw function help to withdrawm the amount from the contract
    function withdraw(uint _amount) external{
        require(msg.sender == owner, "you are not a owner");
        require(address(this).balance > _amount, "Insufficent funds");
        payable(msg.sender).transfer(_amount);
    }
}