// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;
contract SimpleStorage {
    //will get initialized to 0
    uint256 favoriteNumber;

    struct People {
        uint256 favouriteNumber;
        string name;
    }
    People[] public people;
    mapping(string => uint256) public nameToFavouriteNumber;
    function store(uint256 _favouriteNumber) public {
        favoriteNumber = _favouriteNumber;
    }
    //view , pure are used for reading the state of the blockchain
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}
