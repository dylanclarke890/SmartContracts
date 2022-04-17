pragma solidity 0.5.11;

contract MakePayment {
    mapping(address => uint) public balances;
    address payable wallet;

    event Purchase(address indexed buyer, uint256 amount);

    constructor(address payable _wallet) public {
        wallet = _wallet;
    }

    function() external payable {
        // this is a fallback wrapper function.
        send();
    }

    function send() public payable {
        balances[msg.sender] += 1;
        wallet.transfer(msg.value);
        emit Purchase(msg.sender, msg.value);
    }
}