// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

contract Adoption {
    // Create an array from index range [0] -> [15] called adopters
    // 'public' variables have automatic getter mothods
    address[16] public adopters;

    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);

        adopters[petId] = msg.sender;

        return petId;
    }
    
    // get the entire adopters array rathan than just a single entry
    // 'view' means the function will not modify the state of the contract
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }
}