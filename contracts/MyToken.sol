pragma solidity ^0.4.24;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract MyToken is StandardToken {
    string public name = "MyToken";
    string public symbol = "MYTOKEN";
    uint8 public decimals = 18;
    uint public INITIAL_SUPPLY = 120000;

    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
    }
}