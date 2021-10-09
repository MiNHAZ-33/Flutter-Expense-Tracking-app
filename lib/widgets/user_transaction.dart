import 'package:expense_track/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

import 'new_transaction.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  @override
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 56.6, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New Shirt', amount: 86.6, date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
