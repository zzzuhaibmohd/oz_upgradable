// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

contract BoxV2 {
    uint public val;

    //"initialize" is no longer needed as the initial value is already set
    // function initialize(uint _val) external {
    //     val = _val;
    // }

    //new implmentation function in the BoxV2 contract to update the state varaible
    function inc() external {
        val += 2;
    }
}