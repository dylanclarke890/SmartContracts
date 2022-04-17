// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.5.11;

contract Modifiers {
    uint256 public valueCount;
    mapping(uint => string) public values;

    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    constructor() public {
        owner = msg.sender;
    }

    function addValue(string memory value) public onlyOwner {
        incrementCount();
        values[valueCount] = value;
    }

    function incrementCount() internal {
        valueCount += 1;
    }
}