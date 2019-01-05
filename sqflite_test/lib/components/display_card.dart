import 'package:flutter/material.dart';

class DisplayCard extends StatelessWidget {
  final String id;
  final String fulltext;
  final String type;
  final String section;
  final String pinpoint;

  DisplayCard(this.id, this.fulltext, this.type, this.section, this.pinpoint);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      // Section Heading
      case "0":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Text(section,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          new Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0)),
          new Divider()
        ]);
        break;

      // Section MarginalNote
      case "1":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
        ]);


        break;
      // Section Text
      case "2":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Text(section,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()
        ]);
        break;

      // Section Subsection Text
      case "3":
        String subNumber;

        // Include Section number if is first Subsection after the section (i.e. "(1)")
        if (pinpoint == "(1)") {
          subNumber = section + pinpoint;
        } else {
          subNumber = pinpoint;
        }

        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Text(subNumber,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()
        ]);
        break;

      // Section Paragraph
      case "4":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Text(pinpoint,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()
        ]);
        break;

      // Subsection SubmarginalNote
      case "5":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()
        ]);
        break;

      // Subsection paragraph
      case "6":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Text(pinpoint,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()          
        ]);
        break;

      // Subparagraph
      case "7":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Text(pinpoint,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()          
        ]);
        break;

      // Subsection subParagraph
      case "8":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Text(pinpoint,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()          
        ]);
        break;

      case "9":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()           
        ]);
        break;

      case "10":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()           
        ]);
        break;

      case "11":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider() 
        ]);
        break;

      case "12":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Text(pinpoint,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()           
        ]);
        break;

      case "13":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Text(pinpoint,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()           
        ]);
        break;

      case "14":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Text(pinpoint,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()           
        ]);
        break;

      case "15":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Text(pinpoint,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()           
        ]);
        break;

      case "16":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()           
        ]);
        break;

      case "17":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Text(pinpoint,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()           
        ]);
        break;

      case "18":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()           
        ]);
        break;

      case "19":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Text(pinpoint,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()           
        ]);
        break;

      case "20":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()           
        ]);
        break;

      case "21":
        return Row(children: <Widget>[
          new Text(type,
            style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
          ),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()           
        ]);
        break;

      default:
        return Row(children: <Widget>[
          new Text(type),
          new Text(section,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          new Flexible (child: new Column(children: <Widget>[Text(fulltext,
              style:
                  new TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0))]),
          ),
          new Divider()
        ]);
        break;
    }
  }
}
