// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20.sol";
import "@openZeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openZeppelin/contracts/access/ownable.sol";


contract ERC20Token is ERC20, ERC20Burnable, Ownable {
    constructor(address initialOwner)
        ERC20("ERC20Token", "ERC20Token")
        Ownable(initialOwner)
    {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}