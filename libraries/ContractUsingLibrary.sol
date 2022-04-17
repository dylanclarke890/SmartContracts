pragma solidity 0.5.11;

import "./MathLibrary.sol";

contract ContractUsingLibrary {
    using Math for uint;
    uint public value;

    function division(uint first, uint second) public {
        value = first.divide(second);
    }
}