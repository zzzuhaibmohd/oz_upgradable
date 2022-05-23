// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract UnsafeV1 is Initializable{
    
    //Safe - constant and immutables
    uint public constant PI = 314;
    
    //template to ignore the warning of using a contructor
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    uint public immutable MY_X;

    address public owner;
    uint public secret;
    uint public start;

    //Unsafe - constructor
    //uint public secret = 44;
    //uint public start = block.timestamp;

    //template to ignore the warning of using a contructor
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(uint _x){
    //    owner = msg.sender;
        MY_X = _x;
    }

    //uint public isInitialized;

    //modifier notInitilized(){
    //    require(!isInitialized, "Contract already init");
    //    _;
    //    isInitialized = true;
    //}

    function initialize(uint _val) external initializer{
        owner = msg.sender;
        secret = _val;
        start = block.timestamp;
    }

    // Unsafe - selfdesctruct
    // function kill() external {
    //     selfdestruct(payable(address(0)));
    // }
}   