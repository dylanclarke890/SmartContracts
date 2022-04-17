pragma solidity ^0.5.0;

import './Token.sol';

contract TokenTimelock {
    Token public token;
    address public beneficiary;
    uint public releaseTime;

    constructor(Token _token, address _beneficiary, uint _releaseTime) public {
        require(releaseTime > block.timestamp);
        token = _token;
        beneficiary = _beneficiary;
        releaseTime = _releaseTime;
    }

    function release() public payable {
        // Make sure the token has "matured".
        require(block.timestamp >= releaseTime);
        uint amount = token.balanceOf(address(this));
        
        // Only release if the amount is more than 0;
        require(amount > 0);
        token.transfer(beneficiary, amount);
    }
}