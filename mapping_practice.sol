// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract BalanceStorage {
    // Mapping to store the balance of each address
    mapping(address => uint256) public balances;

    // Function to deposit funds into the contract and update the balance
    function deposit() public payable {
        // Add the deposited amount to the sender's balance
        balances[msg.sender] += msg.value;
    }

    // Function to check the balance of any address
    function checkBalance(address _user) public view returns (uint256) {
        // Return the balance of the specified address
        return balances[_user];
    }

    // Function to withdraw funds from the contract
    function withdraw(uint256 _amount) public {
        // Check if the sender has enough balance
        require(balances[msg.sender] >= _amount, "Insufficient balance");

        // Deduct the amount from the sender's balance
        balances[msg.sender] -= _amount;

        // Transfer the requested amount to the sender
        payable(msg.sender).transfer(_amount);
    }
}
