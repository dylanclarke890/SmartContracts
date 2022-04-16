// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.4.16 <0.9.0;

contract HelloWorld {
    string message;

    constructor () public {
      message = "Hello World!";
    }

    function get() public view returns (string memory) {
        return message;
    }
}