pragma solidity 0.8.7;

contract StateVariables{

// state Variables: variables which values are store on blockchain and declare outside of a functiom
// local Variables: variables which are not storre in blockchain and declare inside of blockchain


uint public z = 45; //state variable
function foo() external pure{
    uint x = 23; //local variable
}

}