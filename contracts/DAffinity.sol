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

    event PostCreated(
        uint256 id,
        string ipfsHash,
        string description,
        uint256 likes,
        address author
    );

    function newPost(string memory _ipsHash, string memory _description)
        public
    {
        // Textual content must exist in the publication
        require(bytes(_description).length > 0);
        // User address exists
        require(msg.sender != address(0x0));

        //Increment image id
        postCount++;
        // Add Image to contract
        posts[postCount] = Post(
            postCount,
            _ipsHash,
            _description,
            0,
            msg.sender
        );

        emit PostCreated(postCount, _ipsHash, _description, 0, msg.sender);
    }
}
