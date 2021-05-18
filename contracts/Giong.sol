// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Giong {
    struct Infogiong {
        string time;
        string ten_giong;
        string nguon_goc;
        string description;
    }

    Infogiong[] public Listgiongs;
    mapping(uint256 => uint256) public giongs;

    function create_giong (string memory time,string memory ten_giong ,string memory nguon_goc,string memory description ,uint256 id_bgri) public {
        Listgiongs.push(Infogiong(time, ten_giong, nguon_goc, description)); 
        uint256 id =  Listgiongs.length - 1;
        giongs[id] = id_bgri;
    }

    
}