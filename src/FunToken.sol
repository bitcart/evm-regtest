// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin-contracts/token/ERC20/ERC20.sol";

contract FunToken is ERC20 {
    uint256 constant INITIAL_SUPPLY = 1_000_000 * 10 ** 6;

    function decimals() public view virtual override returns (uint8) {
        return 6;
    }

    constructor() ERC20("FunToken", "FUN") {
        _mint(msg.sender, INITIAL_SUPPLY);
    }
}
