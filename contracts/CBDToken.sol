// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// Import ERC20 from OpenZeppelin
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CBDToken is ERC20 {

    // uint256
    // int256
    // bool
    // bytes
    // char 

    //strings in solidity => array of char
    //arrays

    // The difference between these types of variables, 
    // is that one have fixed space regardless the value, 
    // and the second have different size and space.

    constructor(string memory _name, string memory _symbol)
    ERC20(_name, _symbol)
    {
        // Get some tokens
        // msg.sender (The person deploying the contract/transaction)
        _mint(msg.sender, 1000 * (10 ** 18));
        // Multiply to 10*18 because 1 Ether is equivalent of 1 * (10*18) which is 1 Wei
    }

    //
    // Having fun part!
    //
    // Keeps adding 1000 to the deployer.
    function min() public {
        _mint(msg.sender, 1000 * (10 ** 18));
    }
}
