// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Product {
    struct InfoProduct {
        string time;
        string name;
        string dia_diem;
        string dien_tich;
    }

    InfoProduct[] public Listproducts;
    mapping(uint256 => uint256) public products;

    function create_Product (string memory time,string memory name ,string memory dia_diem,string memory dien_tich ,uint256 id_bgri) public {
        Listproducts.push(InfoProduct(time, name, dia_diem, dien_tich)); 
        uint256 id =  Listproducts.length - 1;
        products[id] = id_bgri;
    }

    
}