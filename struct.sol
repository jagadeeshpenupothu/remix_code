// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EmployeeContract {

    // Defining a struct to store employee details
    struct Employee {
        uint id;
        string name;
        uint age;
        string position;
        uint salary;
    }

    // Mapping to store Employee structs with a unique ID
    mapping(uint => Employee) public employees;

    // Variable to track the next employee ID
    uint public nextId = 1;

    // Function to add a new employee
    function addEmployee(string memory _name, uint _age, string memory _position, uint _salary) public {
        employees[nextId] = Employee(nextId, _name, _age, _position, _salary);
        nextId++;
    }

    // Function to get an employee's details by ID
    function getEmployee(uint _id) public view returns (uint, string memory, uint, string memory, uint) {
        Employee memory emp = employees[_id];
        return (emp.id, emp.name, emp.age, emp.position, emp.salary);
    }

    // Function to update employee details
    function updateEmployee(uint _id, string memory _name, uint _age, string memory _position, uint _salary) public {
        Employee storage emp = employees[_id];
        emp.name = _name;
        emp.age = _age;
        emp.position = _position;
        emp.salary = _salary;
    }
}
