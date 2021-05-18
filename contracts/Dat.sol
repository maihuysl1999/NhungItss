// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Dat {
    struct InfoDat {
        string time;
        string loai_dat;
        string ph;
        string vi_tri;
        string description;
    }

    InfoDat[] public Listdats;
    mapping(uint256 => uint256) public dats;

    function create_Dat(string memory time,string memory loai_dat,string memory ph,string memory vi_tri, string memory description,uint256 id_bgri) public {
        Listdats.push(InfoDat(time, loai_dat, ph, vi_tri, description)); 
        uint256 id =  Listdats.length - 1;
        dats[id] = id_bgri;
    }

    
}