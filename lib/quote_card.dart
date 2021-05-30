import 'package:flutter/material.dart';
import 'Quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  final Function edit;
  QuoteCard({this.quote, this.delete, this.edit});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(quote.image),
            SizedBox(
              height: 5.0,
            ),
            Text(
              quote.title,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: delete,
                  icon: Icon(Icons.delete, color: Colors.red),
                ),
                IconButton(
                  onPressed: edit,
                  icon: Icon(Icons.edit, color: Colors.deepOrangeAccent),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
