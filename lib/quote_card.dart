import 'package:flutter/material.dart';
import 'quote.dart';

class quote_card extends StatelessWidget {
  final Quote quote;
  final void Function() delete;
  quote_card({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(12, 12, 16, 0),
        child: Padding(
            padding: EdgeInsets.all(13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  '${quote.text}',
                  style: TextStyle(
                      fontSize: 12,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text('${quote.author}'),
                SizedBox(height: 10,),
                TextButton.icon(
                  onPressed: delete,
                  icon: Icon(Icons.delete),
                  label: Text('Delete Quote'),
                ),
              ],
            )));
  }
}