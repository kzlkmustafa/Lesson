// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract MappingStructExample{
    
    mapping(address => uint) public balanceRecived;

    function GetBalance() public view returns(uint) {
        return address(this).balance;
    }

    function sendMoney() public payable{
        balanceRecived[msg.sender] += msg.value;
    }

    function withDrawAllMoney(address payable _to) public{
        require(balanceRecived[msg.sender]>0,"yetersiz bakiye");
        balanceRecived[msg.sender] = 0;

        _to.transfer(balanceRecived[msg.sender]);
    }

    function withDrawAllMoneyAmount(address payable _to, uint _amount) public{
        require(_amount <= balanceRecived[msg.sender] ,"yetersiz bakiye");
        balanceRecived[msg.sender] -= _amount;

        _to.transfer(_amount);
    }

}