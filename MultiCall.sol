// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;


// Multi Call
// An example of contract that aggregates multiple queries using a for loop and staticcall.


// Multicall k zryr hm ak hi waqt me ak se zyada function call kr skte hen ab wo function
//  ak bhi ho skta he yaa alg alg bhi ho skte hen and ak se zyada contract k bhi ho skte hen

contract TestMultiCall {
    function test1() external view returns (uint,uint) {
        return (1,block.timestamp);
    }


    function test2() external view returns (uint,uint) {
        return (2,block.timestamp);
    }

    function getData1() external pure returns (bytes memory) {
        return abi.encodeWithSelector(this.test1.selector);
    }

    function getData2() external pure returns (bytes memory) {
        return abi.encodeWithSelector(this.test2.selector);
    }


}


contract MultiCall {
    function multiCall(address[] calldata targets, bytes[] calldata data)
        external
        view
        returns (bytes[] memory)
    {
        require(targets.length == data.length, "target length != data length");

        bytes[] memory results = new bytes[](data.length);

        for (uint i; i < targets.length; i++) {
            // ye viev function he is lia static call kr rhe hen agr koi transaction wagera krni hoti to call use kr lete
            (bool success, bytes memory result) = targets[i].staticcall(data[i]);
            require(success, "call failed");
            results[i] = result;
        }

        return results;
    }
}
