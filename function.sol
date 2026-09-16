// SPDX-License-Identifier: GPL-3.0

pragma solidity ^ 0.8.2 ;


contract Functions{

    // without parameter, without return 
    function sayHello() public pure {

    }

    // without parameter , with return
    function getMessage() public pure returns(string memory){
        return 'Hello there';
    }

    //with parameter , without return
    function storeValues(uint _x, uint _y) public pure {
        uint sum = _x + _y;
    }

    //with parameter , with return
    function addNumber(uint _a , uint _b) public pure returns (uint){
        return _a + _b ;
    }

    //View function //works on blockchain data
    uint number = 18;
    function getNumber() public view returns (uint){
        return number;
    }

    //Pure FUnctions // works on parameter 
    function multiply(uint _a,uint _b) public pure returns(uint){
        return _a*_b; 
    }

    //state changing functions
    function setNumber(uint _num) public{
        number = _num;
    }

    //Internal Function return under the contract only

    function double(uint _a) internal pure returns(uint){
        return _a * 2;   
    } 

    function getDoubleValue(uint _x) public pure returns(uint){
        return double(_x);
    }


    //External Function return outside the contract not in terminal

    function message() external pure returns(string memory){
        return "Hello I am back" ;
    }
}
