// SPDX-License-Identifier:GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract Father{
    string public familyName = "Kim";
    string public givenName = "Jung";
    uint256 public money = 100; 
    
    constructor(string memory _givenName) public {
        givenName = _givenName;
    }
    
    
    function getFamilyName() view public  returns(string memory){
        return familyName;
    } 
    
    function getGivenName() view public  returns(string memory){
        return givenName;
    } 
    
    function getMoney() view public returns(uint256){
        return money;
    }
    

}

contract Son is Father("James"){
    
  

}