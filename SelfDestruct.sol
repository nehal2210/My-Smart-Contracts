pragma solidity 0.8.7;



contract Kill{


    constructor () payable {}

function kill() external{
    selfdestruct(payable(msg.sender));
    // force ether to send from this contract to this address and kill the contract
}

function number ()external pure returns(uint){
    return 123;
}

}


