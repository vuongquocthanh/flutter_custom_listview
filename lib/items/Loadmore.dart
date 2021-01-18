import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Loadmore extends StatelessWidget {
  var isVisible = false;

  Loadmore(this.isVisible);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Visibility(
            visible: isVisible,
            child: Container(
              width: 100,
              color: Colors.transparent,
              child: Image(
                image: AssetImage("assets/images/Ellipsis.gif"),
              ),
            )));
  }
}
