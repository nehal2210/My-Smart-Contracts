pragma solidity 0.8.7;


// Libraries are similar to contracts, but you can't declare any state variable and you can't send ether.

// A library is embedded into the contract if all library functions are internal.

// Otherwise the library must be deployed and then linked before the contract is deployed.



library Math{

    function max(uint x, uint y) internal pure returns(uint){
        return x > y ? x : y;
    }
}


contract CheckLib{
    using Math for uint;
    function findMax(uint x, uint y) external pure returns(uint){
        // return  Math.max(x,y); can be used this way or that way
        return x.max(y);
    }

}