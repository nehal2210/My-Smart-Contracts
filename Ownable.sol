pragma solidity 0.8.7;

// App to set Ownship of Contract

contract Ownable{

address public owner;

constructor(){
    owner  = msg.sender;
}

modifier onlyOwner(){
    require(msg.sender==owner,"only owner can call");
_;
}

function setOwnership(address _newOwner) external onlyOwner {
    require(_newOwner != address(0),"not valid address");
    owner = _newOwner;
}

function anyOneCall() external{}
function onlyOwnerCall() external onlyOwner{}


}