pragma solidity 0.8.7;




contract NewContract{

constructor()payable{

}



}



contract AccountFactory{

NewContract [] public contracts;
    function create() external payable{
       NewContract new_contract =  new NewContract{value:1}();
        contracts.push(new_contract);
    }


}