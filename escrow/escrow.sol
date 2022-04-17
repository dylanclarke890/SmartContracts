pragma solidity ^0.5.0;

contract Escrow {
    address agent;
    mapping(address => uint) public deposits;

    constructor() public {
        agent = msg.sender;
    }

    modifier onlyAgent(){
        require(msg.sender == agent); 
        _;
    }

    function deposit(address payable payee) public onlyAgent payable {
        uint amount = msg.value;
        deposits[payee] += amount;
    }

    function withdraw(address payable payee) public onlyAgent {
        uint payment = deposits[payee];
        deposits[payee] = 0;
        payee.transfer(payment);                
    } 
}