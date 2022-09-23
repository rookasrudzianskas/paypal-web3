// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.15;



contract Transactions {
    // Number of transactions
    uint256 transactionCount;
    // This will be an event that will be fired when a transaction is created
    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp);

    // Struct of the transaction that will be stored on the chain
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;

    }

    // Array of transactions
    TransferStruct[] transactions;

    // Function to add transaction to the blockchain
    function addToBlockchain(address payable receiver, uint amount, string memory message) public {
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp));

        // emit the events we created above
        emit Transfer(msg.sender, receiver, amount, message, block.timestamp);
    }

    // Function to get all the transactions from the blockchain
    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }
    // function get the number of transactions
    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }

    // View keyword means that the function can be only used to view the data. No crypto will be sent to the function and no data will be changed.
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
