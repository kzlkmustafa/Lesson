// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract MappingExample{
    mapping(uint => bool) public MyMapping;
    mapping(address => bool) public MyAddressMapping;
    
    function setValue(uint _index) public{
        MyMapping[_index] = true;
    }

    function setMyAddressTrue() public{
        MyAddressMapping[msg.sender] = true;
    }
}