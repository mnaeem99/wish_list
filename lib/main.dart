import 'package:flutter/material.dart';
import 'Quote.dart';
import 'quote_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WishList App',
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('WishLists')),
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: QuoteList(),
      ),
    );
  }
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> list = [
    Quote(image: 'images/outdoor1.jpg', title: 'Living with Outdoor'),
    Quote(image: 'images/beach1.jpg', title: 'Beach lover'),
    Quote(image: 'images/outdoor2.jpg', title: 'Living with Outdoor'),
    Quote(image: 'images/beach2.jpg', title: 'Beach lover'),
    Quote(image: 'images/outdoor3.jpg', title: 'Living with Outdoor'),
    Quote(image: 'images/beach3.jpg', title: 'Beach lover'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
        children: list
            .map((e) => QuoteCard(
                quote: e,
                delete: () {
                  setState(() {
                    list.remove(e);
                  });
                },
                edit: () {
                  setState(() {});
                }))
            .toList(),
      ),
    );
  }
}
