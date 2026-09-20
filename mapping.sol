// SPDX-License-Identifier: GPL-3.0

pragma solidity ^ 0.8.2 ;

contract MappingDemo{
    //Mapping => key => Value 
    mapping (address => uint) public balances; 

    function setBalance(uint amount) public{
        balances[msg.sender] = amount;
    }

    function getBalance(address user) public view returns(uint){
        return balances[user];
    }

    mapping (string => uint) public studentMarks;
    function setMarks(string memory name, uint marks) public {
        studentMarks[name] = marks;
    }

    function getMarks(string memory name) public view returns(uint){
        return studentMarks[name];
    }
}
