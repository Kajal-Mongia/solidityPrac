pragma solidity ^0.5.1;

contract HelloWorldContract{
    
    string name;
    
    constructor() public{
        name="i am new";
    }
    
    function get() public view returns(string memory){
        return name;
    }
    
    function set(string memory value) public{
        name=value;
    }
}