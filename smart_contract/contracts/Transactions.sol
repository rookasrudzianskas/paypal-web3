// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.15;



contract Transactions {
    // Number of transactions
    uint256 transactionCount;
    // This will be an event that will be fired when a transaction is created
    event Transfer(address from, address receiver, uint amount, string message);

}
































//    uint256 transactionCount;
//
//    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp);
//
//    struct TransferStruct {
//        address sender;
//        address receiver;
//        uint amount;
//        string message;
//        uint256 timestamp;
//
//    }
//
//    TransferStruct[] transactions;
//
//    function addToBlockchain(address payable receiver, uint amount, string memory message) public {
//        transactionCount += 1;
//        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp));
//
//        emit Transfer(msg.sender, receiver, amount, message, block.timestamp);
//    }
//
//    function getAllTransactions() public view returns (TransferStruct[] memory) {
//        return transactions;
//    }
//
//    function getTransactionCount() public view returns (uint256) {
//        return transactionCount;
//    }
}
