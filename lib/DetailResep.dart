import 'package:flutter/material.dart';
import 'package:resep_makanan/Detail.dart';
import 'package:resep_makanan/model/penjelasan.dart';

class DetailResep extends StatelessWidget {
  final Penjelasan place;
  DetailResep({@required this.place});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(place.imageAsset),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.green),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Love(),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                place.description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Container(
              child: RaisedButton(
                child: Text("Lihat Resep"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (conntext) {
                    return Detail(place: place);
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Love extends StatefulWidget {
  @override
  _LoveState createState() => _LoveState();
}

class _LoveState extends State<Love> {
  bool seneng = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        seneng ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          seneng = !seneng;
        });
      },
    );
  }
}
