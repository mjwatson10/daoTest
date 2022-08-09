// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/governance/TimelockController.sol";

contract TimeLock is TimelockController {

    ///@param minDelay how long you have to wait before executing
    ///@param proposers is the list of addresses that can propse 
    ///@param executors who can excute when proposal passes
    constructor( 
        uint256 minDelay,
        address[] memory proposers,
        address[] memory executors
        ) TimelockController(minDelay, proposers, executors){}
}