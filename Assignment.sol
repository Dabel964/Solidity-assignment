// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Assignment {

uint256 a = 20;

function modifyNumber() external {
    a = 5;
}
 
function returnNumber() external view returns (uint256) {
    return a; 
}

// Question 2

struct Task {
    string activity;
    bool completed;
}

Task[] public tasks;

function addTask(string memory _activity) public {
    tasks.push(Task(_activity, false));
}

function getTasks() public view returns (Task[] memory) {
    return tasks; 
}

function markCompleted(uint256 _index) public {
    require(_index < tasks.length, "task does not exist");
    tasks[_index].completed = true;
}

// Question 3

/* A struct groups related data of different types, example below
    struct studentRecord { 
            string studentName
            uint256 studentAge
            uint256 studentReg_no
            bool graduated
    }

    A mapping is a key-value store for easy and efficient lookups, example below
                  |  studentName | studentAge | studentReg_no | has_graduated |
 0001 ===>             Ken             21             0001          false
 0002 ===>             Dan             28             0002          true  
 0003 ===>             Mel             32             0003          true
 0004 ===>             Chris           23             0004          false 
*/

struct studentRecord {
        string studentName;
        uint256 studentAge;
        uint256 studentReg_no;
        bool has_graduated;
}

studentRecord public student;
mapping(uint256 => studentRecord) public studentsMap;

function createStudentRecord(string memory studentName, uint256 studentAge, uint256 studentReg_no, bool has_graduated) public {
    student = studentRecord(studentName, studentAge, studentReg_no, has_graduated); 
    studentsMap[studentReg_no] = studentRecord(studentName, studentAge, studentReg_no, has_graduated);

    }


}











