// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract SendMoney{

    uint public balanceReceived; // alınan bakiye

    function recieveMoney() public payable{ //para alma
        balanceReceived += msg.value;
    }

    function getBalance() public view returns(uint){
        return address(this).balance; // this kastedmek 
    }

    function takeMoney() public{
        //address payable whoMoney = msg.sender; payable olmadığı ve dönüştüremediği için
        address payable whoMoney = payable(msg.sender);
        whoMoney.transfer(this.getBalance()); // tüm bakiyeyi transfer eder
    }

    function takeMoneyTo(address payable _to) public{
        _to.transfer(this.getBalance());
        
    }
}