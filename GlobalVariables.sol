pragma solidity 0.8.7;



contract GlobalVariables{

    function global() external view returns(address,uint,uint){
        address sender  =  msg.sender; // give the addresss of caller
        uint timestamp = block.timestamp; // give the uinx time when this function is called
        uint blockNum = block.number; // give the current block number

        return(sender,timestamp,blockNum);
    }

}