// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Whitelist {
    uint8 public maxWhitelistedAddresses;

    mapping(address => bool) public whitelistedAddresses;

    uint8 public numwhitelistedAddresses;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public {

        require(!whitelistedAddresses[msg.sender], "Address already whitelisted!");
        require(numwhitelistedAddresses < maxWhitelistedAddresses, "Limit already reached!");

        whitelistedAddresses[msg.sender] = true;
        numwhitelistedAddresses +=1;
    }
}