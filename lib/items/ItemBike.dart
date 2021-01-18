import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBike extends StatefulWidget {
  final String content;

  ItemBike(this.content);

  @override
  State<StatefulWidget> createState() {
    return ItemBikeState();
  }
}

class ItemBikeState extends State<ItemBike> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.all(4.0),
          color: Colors.orangeAccent,
          width: double.infinity,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                child: Icon(Icons.directions_bike_sharp),
              ),
              Padding(padding: EdgeInsets.only(top: 8.0, bottom: 8.0), child: Text("${widget.content}"),)
            ],
          ),
        ));
  }
}
