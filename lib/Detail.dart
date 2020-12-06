import 'package:flutter/material.dart';
import 'package:resep_makanan/model/penjelasan.dart';

class Detail extends StatelessWidget {
  final Penjelasan place;
  Detail({@required this.place});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resep"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(place.bahan[index]),
          );
        },
        itemCount: place.bahan.length,
      ),
    );
  }
}
