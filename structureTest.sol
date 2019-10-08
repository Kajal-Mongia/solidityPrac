pragma solidity ^0.5.1;

contract janta{
    
    uint public peopleCount=0;
    mapping(uint=>Person) public people;
    
    uint256 startTime=1570550469;
    
    address public owner;
    
    constructor() public{
        owner=msg.sender;
    }
    
    modifier onlyWhenOpen(){
        require(block.timestamp>=startTime);
        _;
    }
        
    
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }
    
    struct Person{
        uint id;
        string firstName;
        string lastName;
    }
    
    
    
    function addPerson(string memory _firstN,string memory _lastN) public onlyOwner onlyWhenOpen{
        // return "hi!";
        peopleCount=peopleCount+1;
        people[peopleCount]=Person(peopleCount,_firstN,_lastN);
    }
}