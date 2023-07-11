// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract Login {
     // Each bytes32 variable would occupy one slot
    // because bytes32 variable has 256 bits(32*8)
    // which is the size of one slot

    bytes32 private username;
    bytes32 private password;

    constructor (bytes32 _username, bytes32 _password) {
        username = _username;
        password = _password;
    }
}