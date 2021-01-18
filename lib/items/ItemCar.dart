import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemCar extends StatefulWidget {
  final String index;

  ItemCar(this.index);

  @override
  State<StatefulWidget> createState() {
    return ItemCarState();
  }
}

class ItemCarState extends State<ItemCar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.all(4.0),
          color: Colors.cyan,
          width: double.infinity,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 8.0, bottom: 8.0), child: Text("${widget.index}"),),
              Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                child: Icon(Icons.car_repair),
              ),
            ],
          ),
        ));
  }
}
