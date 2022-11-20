pragma solidity 0.8.7;


// virtual -> this function can be inharited and customizable
// override -> virtual function is customized


// virtual override -> kisi or ka function override ho rha he and aage ye inharited bhi hoskta he and customizable bhi he

contract A{

function foo() external pure virtual returns(string memory){
    return "A";
} 


function bar() external pure virtual returns(string memory){
    return "A";
} 



}


contract B is A {

function foo() external pure override returns(string memory){
    return "B";
} 


function bar() external pure virtual override returns(string memory){
    return "B";
} 

}


contract C is B {


function bar() external pure override returns(string memory){
    return "C";
} 



w
}