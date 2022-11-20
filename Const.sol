pragma solidity 0.8.7;


 // coding convention to uppercase constant variables
//  by using constant as a state variable we can save gas
// 21371 gas
contract Const{
    uint  public constant MY_NUM = 123;
}

// 	23471 gas
contract Var{
    uint public  MY_NUM = 123;
}