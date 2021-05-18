// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract History {
    struct InfoHistory {
        string time;
        string action;
        uint256 key;
        string description;
    }

    InfoHistory[] public Listhistories;
    mapping(uint256 => uint256) public histories;

    function create_Product (string memory time,string memory action ,uint256 key ,string memory description, uint256 id_bgri) public {
        Listhistories.push(InfoHistory(time, action, key, description));
        uint256 id =  Listhistories.length - 1;
        histories[id] = id_bgri;
    }

    
}