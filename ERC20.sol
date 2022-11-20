pragma solidity 0.8.7;

import "./IERC20.sol";

contract ERC20 is IERC20{

    mapping(address=>uint) balance;
    mapping(address=>mapping(address=>uint)) public override allowance;

    uint public total_supply=0;
    string public symbol = "TST";
    string public name = "TST token";
    // event Transfer(address indexed from, address indexed to, uint value);
    // event Approval(address indexed owner, address indexed spender, uint value);


    function totalSupply() external view override returns (uint){
        return total_supply;

    }

    function balanceOf(address account) external view override returns (uint){
        return balance[account];
    }

    function transfer(address recipient, uint amount) external override returns (bool){
        require(balance[msg.sender] > amount, "Insufficient Balance");
        balance[msg.sender] -= amount;
        balance[recipient] += amount;
        emit Transfer(msg.sender, recipient, amount);
        return true;

    }


    function approve(address spender, uint amount) external override returns (bool){
        require(balance[msg.sender] > amount,"Insufficient Balance");
        allowance[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    function transferFrom(
        address sender,
        address recipient,
        uint amount
    ) external override returns (bool){
        require(balance[sender] > amount,"Insufficient Balance");
        require(allowance[sender][msg.sender] > amount,"not allowed to spend this amount");
        allowance[sender][msg.sender] -= amount;
        balance[sender] -= amount;   
        balance[recipient] += amount;
        emit Transfer(sender, recipient, amount);
    
    
        return true;
    }


    function mint(uint amount) external{
        total_supply+=amount;
        balance[msg.sender] += amount;
        emit Transfer(address(0), msg.sender, amount);
    } 


function mint(uint amount) external{
        total_supply -= amount;
        balance[msg.sender] -= amount;
        emit Transfer( msg.sender, address(0), amount);
    } 









}