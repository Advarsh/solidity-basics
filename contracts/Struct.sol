// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.7;
// lower gas cost than child contracts
contract UsingStruct{
    struct PaymentReceived{
        address from;
        uint amount;
    }
    PaymentReceived public payment;
    function sendMoney() external payable{
        payment = PaymentReceived(msg.sender, msg.value);
        // same as above
        // payment.from =msg.sender;
        // payment.amount =msg.value;
    }
}