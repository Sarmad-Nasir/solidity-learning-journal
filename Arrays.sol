// SPDX-License-Identifier: GPL-3.0

pragma solidity ^ 0.8.2 ;

contract Arrays{
    // Arrays
    // 2 types = 1) Fixed Size Array 2) Dynamic Array

    // Fixed Size Array
    uint[5] public fixedArray = [10,20,30,40,50]; // index value (length : 5 (length -1))

    //Dynamic Array 
    uint[] public dynamicArray;

    // Fixed size array functions

    function getFixedValues(uint index) public view returns(uint){
        return fixedArray[index];
    }    

    //set element 
    function setFixedValue(uint index , uint value) public {
        fixedArray [index] = value;
    }

    // traversing fixed array
    function traversingFixedArray () public view returns (uint[5] memory) {
        uint[5] memory temp;

        for (uint i = 0 ; i < fixedArray.length ; i++ ){
            temp[i] = fixedArray[i];
        }
        return temp;
    }

    // Dynamic Array Operations 

    // add new element 

    function addValue(uint value) public {
        dynamicArray.push(value);
    }

    // get element 
    function getValue(uint index) public view returns(uint){
        return dynamicArray[index];
    }

    // get full array length

    function getlength() public view returns(uint){
        return dynamicArray.length;
    }

    // remove the last element

    function removeLast() public {
        dynamicArray.pop();
    }


    // traversing dynamic array 

    function traversingDynamicArray() public view returns(uint[] memory){
        uint[] memory temp = new uint[](dynamicArray.length);
        for( uint i = 0; i < dynamicArray.length ; i++){
            temp[i] = dynamicArray[i];
        }
        return temp;
    }


}
