// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Greeting {
    function greeting(address helper) public returns (string memory) {
        (bool success, bytes memory helper) = helper.delegatecall(abi.encodeWithSignature("getGreeting()"));
        require(success, "call to helper failed");
        return abi.decode(helper, (string));
    }
}

contract Helper {
    string public greeting = "hello";
    function getGreeting() public view returns (string memory) {
        return greeting;
    }
}