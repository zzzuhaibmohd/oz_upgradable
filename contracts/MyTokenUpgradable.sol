// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract MyTokenUpgradeable is Initializable, ERC20Upgradeable, OwnableUpgradeable{
    //constructor() ERC20("LOLCoin", "HAHA"){
    //}

    function initilize() external initializer {
        __ERC20_init("LOLCoin", "HAHA");
        __Ownable_init();        
    }

    function mint(address to, uint amount) external onlyOwner{
        _mint(to, amount);
    }
    
}