// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

contract Box {
    uint public val;

    //"constructor" is commented out becasuse inside the implementation contract state varaibles are never used
    // constructor(uint _val) {
    //     val = _val;
    // }

    //instead of "constructor" we make use of a function call to set the values
    function initialize(uint _val) external {
        val = _val;
    }
}