// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.5.11;

contract StructsUsage {
    struct Person {
        uint id;
        string firstName;
        string lastName;
    }

    uint256 public peopleCount;
    mapping(uint => Person) public people;

    function newPerson(string memory _firstName, string memory _lastName) public {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
}