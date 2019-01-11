import 'package:flutter/material.dart';

final searchTextController = new TextEditingController();

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 44,
        color: Colors.blue[900],
        padding: const EdgeInsets.only(left: 0.0, top: 0.0, bottom: 0.0),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                  color: Colors.deepOrange[900],
                  padding: EdgeInsets.all(10),
                  child: new Center(child: new Icon(Icons.menu))),
              new Expanded(
                  child: new Container(
                padding: EdgeInsets.all(4),
                child: new Center(
                  child: TextField(
                      controller: searchTextController,
                      decoration: new InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          filled: true,
                          fillColor: Colors.grey[300],
                          hintText: 'This is a hint'),
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black)),
                ),
              )),
              new Container(
                  color: Colors.blue,
                  padding: EdgeInsets.all(10),
                  child: new Center(
                      child: new GestureDetector(
                    onTap: () {

                      print(searchTextController.text);

                    },
                    child: new Icon(Icons.search),
                  )))
            ]));
  }
}
