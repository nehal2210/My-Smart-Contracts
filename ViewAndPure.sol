pragma solidity 0.8.7;



contract ViewAndPure{
uint public num = 15;

function viewFunc() external view returns(uint){
// read data/state variable from the blockchain
return num + 5;

}



function pureFunc(uint x, uint y) external pure returns(uint){
    // does not read data/variable from  bockchain
    return x + y;

}


}