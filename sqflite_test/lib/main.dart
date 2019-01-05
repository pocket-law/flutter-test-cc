import 'package:flutter/material.dart';

import './components/display_card.dart';

import './database/database.dart';

import './database/model/entry.dart';

void main() => runApp(MyApp());

Future<List<Entry>> fetchEntriesFromDatabase() async {
  var dbHelper = DBHelper();
  Future<List<Entry>> entries = dbHelper.getAllEntries();
  return entries;
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SQFLite test',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'SQFLite test Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String sqlReturnString = "";

  void _initSQL() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new Container(
        padding: new EdgeInsets.all(16.0),
        child: new FutureBuilder<List<Entry>>(
          future: fetchEntriesFromDatabase(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return new Scrollbar(
                  child: new ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new DisplayCard(snapshot.data[index].id, snapshot.data[index].fulltext, snapshot.data[index].type, snapshot.data[index].section, snapshot.data[index].pinpoint),
                              new Divider()
                            ]);
                      }));
            } else if (snapshot.data.length == 0) {
              return new Text("No Data found");
            }
            return new Container(
              alignment: AlignmentDirectional.center,
              child: new CircularProgressIndicator(),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _initSQL,
        tooltip: 'Query SQL',
        child: Icon(Icons.search),
      ),
    );
  }
}
