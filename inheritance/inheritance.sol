pragma solidity 0.5.11;

contract ERC20Token {
    string name;
    mapping(address => uint) public balances;

    function mint() public {
        balances[tx.origin] ++;
    }
}

contract MakePayment {
    address public token;
    address payable wallet;

    constructor(address payable _wallet, address _token) public {
        wallet = _wallet;
        token = _token;
    }

    function() external payable {
        buyToken();
    }

    function buyToken() public payable {
        ERC20Token(address(token)).mint();
        wallet.transfer(msg.value);
    }
}