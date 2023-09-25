// SPDX-License-Identifier: UNLICENSED 
pragma solidity 0.8.19;

import "hardhat/console.sol";

contract Token{
    string public name = "Hardhat Token";
    string public symbol = "HHT";
    uint public totalSupply = 10000;
    address public owner;

    mapping(address=> uint) balances;

    constructor(){
        owner = msg.sender;
        balances[owner] = totalSupply;
        console.log(owner);//using console in solidity for debugging purpose
    }

    function transfer(address to, uint amount) external{
        require(balances[msg.sender] > amount, "Not enough tokens");
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) external view returns(uint){
        return balances[account];
    }
}