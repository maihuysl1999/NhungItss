// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract QrCode {
    struct Infoqrcode {
        string time;
        string action;
        string description;
    }

    Infoqrcode[] public Listqrcodes;
    mapping(uint256 => uint256) public qrcodes;

    function create_qrcode (string memory time,string memory action ,string memory description ,uint256 id_bgri) public {
        Listqrcodes.push(Infoqrcode(time, action, description)); 
        uint256 id =  Listqrcodes.length - 1;
        qrcodes[id] = id_bgri;
    }

    
}