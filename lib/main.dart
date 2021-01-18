import 'package:flutter/material.dart';
import 'package:flutter_custom_listview/items/ItemBike.dart';
import 'package:flutter_custom_listview/items/ItemCar.dart';
import 'package:flutter_custom_listview/items/Loadmore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyCustomListview(),
    );
  }
}

class MyCustomListview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCustomListviewState();
  }
}

class MyCustomListviewState extends State<MyCustomListview> {
  ScrollController scrollController;
  List<String> listItems = List();
  var isLoadmore = false;

  @override
  void initState() {
    scrollController = ScrollController()..addListener(_scrollListener);
    listItems.addAll(List.generate(10, (index) => "Item $index"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Custom Listview"),
      ),
      body: ListView.builder(
        controller: scrollController,
        padding: EdgeInsets.all(4.0),
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          if (index % 2 == 0) {
            return ItemBike(listItems[index].toString());
          } else {
            return ItemCar(listItems[index].toString());
          }
        },
      ),
    );
  }

  void _scrollListener() {
    print(scrollController.position.extentAfter);
    if (scrollController.position.extentAfter < 100) {
      if (listItems.length < 100) {
        setState(() {
          showALertDialog(context, true);
          Future.delayed(Duration(milliseconds: 1000), (){
            Navigator.of(context).pop();
            listItems.addAll(new List.generate(10, (index) => 'Inserted $index'));
          });
        });
      }
    }
  }

  void showALertDialog(BuildContext context, bool isVisible) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: Loadmore(isVisible),
      actions: [],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
