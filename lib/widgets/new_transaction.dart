import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTransactionFunction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addNewTransactionFunction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              onPressed: () {
                addNewTransactionFunction(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
