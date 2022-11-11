// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract DAffinity {
    string public name = "DA-ffinity";

    uint256 public postCount = 0;
    mapping(uint256 => Post) public posts;

    struct Post {
        uint256 id;
        string message;
        string ipfsHash;
        uint256 likes;
        address author;
    }
}
