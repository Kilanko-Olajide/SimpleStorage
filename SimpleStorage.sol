// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0

contract SimpleStorage{
    uint256 favouriteNumber; 

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nametofavoritenumber;

    
    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;    
    }
    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }
    function addperson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People({favouriteNumber: _favouriteNumber, name: _name}))
        nametofavoritenumber[_name] = _favouriteNumber;
    }
}
