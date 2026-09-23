// SPDX-License-Identifier: GPL-3.0

pragma solidity ^ 0.8.2 ;


contract EtherHandling{

    // payable = receive Ether 
    // call = send Ether

    function deposit() public payable {

    }

    // check balance 
    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    // send Ether 
    function sendEther(address payable _to) public payable returns(bool){
        (bool success,) = _to.call{value : msg.value}("");
        return success;

        } 
}
