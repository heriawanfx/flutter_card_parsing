import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new HalamanSatu(),
    );
  }
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: new AppBar(
        title: new Text("Card & Parsing"),
      ),
      body: new Container(
        padding: EdgeInsets.all(5.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new CardSaya(
                iconX: Icons.home, teksX: "Home", warnaX: Colors.brown),
            new CardSaya(
                iconX: Icons.favorite, teksX: "Favorite", warnaX: Colors.pink),
            new CardSaya(
                iconX: Icons.place, teksX: "Place", warnaX: Colors.blue),
            new CardSaya(
                iconX: Icons.settings, teksX: "Settings", warnaX: Colors.black),
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {
  CardSaya({this.iconX, this.teksX, this.warnaX});

  final IconData iconX;
  final String teksX;
  final Color warnaX;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Card(
        child: Column(
          children: <Widget>[
            new Icon(
              iconX,
              size: 40.0,
              color: warnaX,
            ),
            new Text(
              teksX,
              style: new TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
