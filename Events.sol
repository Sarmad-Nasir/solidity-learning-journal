// SPDX-License-Identifier: GPL-3.0

pragma solidity ^ 0.8.2 ;

contract Events{
    event NewNumberSet(address sender, uint oldNumber, uint newNumber ); 
    uint public number = 20;

    function setNumber(uint _newNumber) public{ 

    uint old = number ; 
    number = _newNumber;

    emit NewNumberSet(msg.sender, old, number);
    }


    // events wihtout parameter

    event JustMessage(string message);
        function sendMessage() public{
            emit JustMessage("Hello World");
        }
    }
