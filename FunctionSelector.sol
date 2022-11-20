

// Function Selector
// When a function is called, the first 4 bytes of calldata specifies which function to call.

// This 4 bytes is called a function selector.

// Take for example, this code below. It uses call to execute transfer on a contract at the address addr.


// addr.call(abi.encodeWithSignature("transfer(address,uint256)", 0xSomeAddress, 123))
// The first 4 bytes returned from abi.encodeWithSignature(....) is the function selector.

// Perhaps you can save a tiny amount of gas if you precompute and inline the function selector in your code?

// Here is how the function selector is computed.


// function signature ka mtlab he k function ka naam and its k parameter ki data types
// function selector hme ye btata he k jb hm koi function call krte hen to compiler use encode kese krta he
// jo bhi hm function call krte hen wo msg.data me jata he, is k zryr hm kisi bhi contract k function ko apne contract se call kr skte hen


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionSelector {
    /*
    "transfer(address,uint256)"
    0xa9059cbb
    "transferFrom(address,address,uint256)"
    0x23b872dd
    */
    function getSelector(string calldata _func) external pure returns (bytes4) {
        return bytes4(keccak256(bytes(_func)));
    }

// ye function hme kisi bhi function k naam ko encode kr k de dega

}

// data me hme ye mila

// "0xa9059cbb ye function k signatur ko show kr rhi he
// 0000000000000000000000005b38da6a701c568545dcfcb03fcb875f56beddc4 ye paramter addresss ki value ko show kr rhi he
// 0000000000000000000000000000000000000000000000000000000000000001" ye parameter ki value o show kr rhi he



contract Receive{

event Log(bytes data);
function transfer(address _add, uint amount) external{
    emit Log(msg.data);
}



}

