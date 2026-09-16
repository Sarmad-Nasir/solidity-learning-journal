// SPDX-License-Identifier: GPL-3.0

pragma solidity ^ 0.8.2 ;

contract Operators{
    // Operator , Operands , Expression (a+b)
    // Arithematic Operators

    uint public a = 10;
    uint public b = 4;

    uint public sum = a + b;
    uint public diff = a - b;
    uint public mul = a * b;
    uint public div = a / b;
    uint public mod = a % b;

    // Comparison Operators

    bool public isEqual = (a == b);
    bool public isNotEqual = (a != b);
    bool public isGreator = (a > b);
    bool public isSmall = ( a < b);
    bool public isGreatorEqual = ( a >= b);
    bool public isSmallEqual = (a <= b);

    // Logical Operators 

    bool public bool1 = true;
    bool public bool2 = false;

    bool public andOP = bool1 && bool2 ;
    bool public orOP = bool1 || bool2;
    bool public notOP = !bool1;

    // Assignment Operators 

    int public x = 10;

    int public addAssign = x + 3;
    int public diffAssign = x - 5;
    
}
