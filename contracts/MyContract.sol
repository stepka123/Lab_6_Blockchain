pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


contract MyToken {

    address public owner;
    mapping(address=>uint) public payments;


    constructor() {
        owner = msg.sender;
    }

    function payForTime() public payable{
        payments[msg.sender] = msg.value;
    }

    function withdrawAll() public{
        address payable _to = payable(owner);
        address _thisContact = address (this);
        _to.transfer(_thisContact.balance);
    }
}








