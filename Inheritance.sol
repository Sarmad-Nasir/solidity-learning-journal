// SPDX-License-Identifier: GPL-3.0

pragma solidity ^ 0.8.2 ;

contract parent {
    string public message = "Hello How are you?!";

    function getMessage() public view returns(string memory){
        return message;
    }
}

contract child is parent{

    function getParentMessage() public view returns (string memory){
        return message;
    }

}
