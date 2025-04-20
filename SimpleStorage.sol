
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //stating our version

contract SimpleStorage {
    // favoriteNumber is initialized to 0 if no value is provided
    uint256 myFavoriteNumber; // default 0

    //uint256[] listOfFavoriteNumbers;
    struct Person {
        uint256 favoriteNumber;
        string name;
    }
   
    // dynamic array
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    // push something to the blockchain - change the state
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }   

    // view, pure - only reading the blockchain
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }
    
    function addPerson(string calldata _name, uint256 _favoriteNumber) public {
          listOfPeople.push(Person(_favoriteNumber, _name));
          nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
