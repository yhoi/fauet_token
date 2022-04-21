// SPDX-License-Identifier: TTT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TESTToken is ERC20, Ownable {
    constructor() ERC20("TESTToken", "TTT") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}