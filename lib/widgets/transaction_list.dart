import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);

  Widget build(BuildContext context) {
    return Column(
      children: transactions.map(
        (tx) {
          return Card(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    '\$${tx.amount}',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tx.title,
                      style: TextStyle(fontSize: 18, color: Colors.blueAccent),
                    ),
                    Text(
                      DateFormat.yMd().format(tx.date),
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ).toList(),
    );
  }
}
