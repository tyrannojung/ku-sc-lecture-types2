// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataLocations {
    struct User {
        string name;
        bool isActive;
        uint256[] scores;
    }

    mapping(uint256 => User) public users;

    uint256 public nextUserId = 1;

    function addUser(string memory _name, bool _isActive) public returns (uint256) {
        //fill in (hint "users[nextUserId] = ~ ")
        nextUserId++;
        return nextUserId - 1;
    }

    function updateUser(string calldata _newName, bool _isActive, uint256 _userId) external {
        require(users[_userId].isActive, "User is not active");

        User memory userToUpdate = users[_userId]; //something wrong
        userToUpdate.name = _newName;
        userToUpdate.isActive = _isActive;
    }

    function deleteUser(uint256 _userId) external {
        require(users[_userId].isActive, "User is not active");

        //fill in
    }

    function addScore(uint256 _userId, uint256 _score) public {
        require(users[_userId].isActive, "User is not active");

        //fill in
    }

    function getScore(uint256 _userId, uint256 _index) public view returns (uint256) {
        require(_index < users[_userId].scores.length, "Index out of bounds");
        //fill in
    }

    function transferScore(uint256 _fromUserId, uint256 _toUserId, uint256 _index) public {
        require(users[_fromUserId].isActive && users[_toUserId].isActive, "Either of the user is not active");

        //Have to define 'fromUser' (User type)
        //Have to define 'toUser' (User type)

        require(_index < fromUser.scores.length, "Index out of bounds");
        
        toUser.scores.push(fromUser.scores[_index]);
        delete fromUser.scores[_index];
    }
}
