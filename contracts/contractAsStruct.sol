// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;

contract ContractAsStruct{
    PaymentReceived public payment; //PaymentReceived becomes a datatype with payment being its object
    function sendMoney() external payable{
        payment = new PaymentReceived(msg.sender, msg.value); //new payment object instantiated
    }
}

contract PaymentReceived{
    address public from;
    uint public amount;
    constructor(address _from, uint _amount){
        from = _from;
        amount = _amount;
    }
}


