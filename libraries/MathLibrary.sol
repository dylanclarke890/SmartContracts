pragma solidity 0.5.11;

library Math {
    function divide(uint a, uint b) internal pure returns(uint) {
        require(b > 0);
        return a / b;
    }
}