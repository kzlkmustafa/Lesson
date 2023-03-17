// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC1155/ERC1155.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract MKZLK is ERC1155, Ownable {
    string public name;
    string public symbol;

    mapping(uint => string) public tokenURI;

    constructor() ERC1155(""){
        name = "MKZLK contract";
        symbol = "dev";
    }

    function mint(address _to, uint _id, uint _amount) external onlyOwner {
        _mint(_to, _id, _amount, "");
    }
    
    function setURI(uint _id, string memory _uri) external onlyOwner {
        tokenURI[_id] = _uri;
        emit URI(_uri, _id);
    }
}