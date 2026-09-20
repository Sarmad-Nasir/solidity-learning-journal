// SPDX-License-Identifier: GPL-3.0

pragma solidity ^ 0.8.2 ;


contract structuers{
struct Student{
    string name;
    uint age;
    uint marks;
}    
Student public student1 ;
function setStudent (string memory _name, uint _age, uint _marks) public {
    student1 = Student(_name, _age, _marks);
} 

//Aray of Struct
Student[] public students;

function addStudent(string memory _name, uint _age, uint _marks) public {
    students.push(Student(_name, _age, _marks));

}

function getStudent(uint index) public view returns(string memory, uint , uint) {
    Student memory s = students[index];
    return (s.name, s.age, s.marks);
}

function getLength01() public view returns(uint){
    return students.length;
}
}
