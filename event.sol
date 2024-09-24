//SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract practice_event{
    event log(address indexed account_address, string msg);
    function trigger_log_event() public{
        emit log(msg.sender,"hello");
    }
}
