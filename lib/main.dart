import 'package:expense_track/models/transaction.dart';
import 'package:expense_track/widgets/user_transaction.dart';
import './widgets/new_transaction.dart';
import './widgets/transaction_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // String? titleInput;
  // String? amountInput;

  // final titleController = TextEditingController();
  // final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My expenses')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            color: Colors.blueAccent,
            child: Container(
              child: Text('Chart'),
            ),
            elevation: 5,
          ),
          UserTransaction(),
        ],
      ),
    );
  }
}
