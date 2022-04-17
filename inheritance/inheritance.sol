pragma solidity 0.5.11;

contract ERC20Token {
    string public name;
    mapping(address => uint) public balances;

    constructor(string memory _name) public {
        name = _name;
    }

    function mint() public {
        balances[tx.origin] ++;
    }
}

contract InheritedToken is ERC20Token {
    string public symbol;
    address[] public owners;
    uint256 ownerCount;

    constructor(string memory _name, string memory _symbol) ERC20Token(_name) public {
        name = _name;
        symbol = _symbol;
    }

    function mint() public {
        super.mint();
        ownerCount++;
        owners.push(tx.origin);
    }
}