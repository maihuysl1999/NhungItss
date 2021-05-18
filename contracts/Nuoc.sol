// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Nuoc {
    struct Infonuoc {
        string time;
        string nguon_nuoc;
        string ph;
        string vi_tri;
        string description;
    }

    Infonuoc[] public Listnuocs;
    mapping(uint256 => uint256) public nuocs;

    function create_nuoc(string memory time,string memory nguon_nuoc,string memory ph,string memory vi_tri, string memory description,uint256 id_bgri) public {
        Listnuocs.push(Infonuoc(time, nguon_nuoc, ph, vi_tri, description)); 
        uint256 id =  Listnuocs.length - 1;
        nuocs[id] = id_bgri;
    }

    
}