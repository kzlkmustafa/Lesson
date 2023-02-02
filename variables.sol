// SPDX-License-Identifier: MIT

pragma solidity ^0.8.12;

contract variables{

    uint256 public myNumber; //default = 0
    //public'ten bahset
    function setMyNumber(uint256 _mynumber) public { //fonksiyon ismi değişkenle aynı olamaz
        myNumber = _mynumber;
    }

    bool public Myboolen; //default = false

    function setMyBool(bool _bool)public{
        Myboolen = _bool;
    }

    uint8 public myUint8; //unsigned 0-256 
                          //int8 = -256 => +256

    function sumMyUint8()public{
        //myUint8++; 
        myUint8 = myUint8 + 1;
    }

    function subMyUint() public{
        myUint8--;
    }

    address public myAddress; //solidty özel değişkenleri 
    
    function setMyaddres(address _myAddress) public {
        myAddress = _myAddress;
        
    }

    function getBalanceThisAddress() public view returns(uint256){ // .transfer() .send()
        return myAddress.balance;
    }

    string public myString = 'Hello Web3'; //default = "" 
    
    function setMyString(string memory _myString) public{ //referans tipleri için hafıza yeri belirtilmelidir.
        myString =  _myString; 
    }

    /*
    Mantıksal işlem
        and, ve => &&
        or, yada => ||

     */

    
    uint public finalCase;

    function setFinalCase(uint _finalCase) public{
        finalCase = _finalCase;
    }

    uint public comeLesson; 

    function setComeLesson(uint _comeLesson) public{
        comeLesson = _comeLesson;
    }

    function setCertificate() public view returns(string memory){
        
        if(finalCase >80 && comeLesson >50){
            return "can get a certificate";
        }else{
            return "can't get a certificate";
        }
    }   
         
}