pragma solidity ^0.5.0;

contract AdditionGame {
    address public owner;

    constructor() public {
        owner = msg.sender;
    }
    
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    function deposit() public payable {  
        require(msg.sender == owner);
    }   
  
    function transfer(uint _value) public returns (bool) {
        require(getBalance() >= _value);
        msg.sender.transfer(_value);
        return true;
    }
}
