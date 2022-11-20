pragma solidity 0.8.7;




contract EthWallet{

    event deposited(address sender,uint value);
    event withdrawed(address receiver,uint value);

    address public immutable OWNER;
    constructor(){
        OWNER = msg.sender;
    }

    // received Ether 
    function deposit() external payable{
       emit deposited(msg.sender,msg.value);
    }
    receive() external payable{}


    function withdraw() external payable returns(bool){
        require(msg.sender == OWNER,"Not an Owner");

        (bool success,) = payable(msg.sender).call{value: address(this).balance}("");
        if (success == true){
            emit withdrawed(msg.sender, msg.value);
        }
        return success;
    }


    function getBalance() external view returns(uint){
        return address(this).balance;
    }





}