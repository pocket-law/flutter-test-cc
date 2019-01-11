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
        return Container(
          color: Colors.grey,
          padding: const EdgeInsets.only(left: 2.0, bottom: 2.0, top: 2.0),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Flexible(
                  child: new Column(children: <Widget>[
                    Text(fulltext,
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0))
                  ]),
                ),
                new Text(
                  type,
                  style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                )
              ]),
        );
        break;

      // Section MarginalNote
      case "1":
        return Container(
            padding: const EdgeInsets.only(left: 2.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext,
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0))
                    ]),
                  ),
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  )
                ]));
        break;

      // Section Text
      case "2":
        return Container(
            padding: const EdgeInsets.only(left: 2.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(section,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14.0)),
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext, style: new TextStyle(fontSize: 14.0))
                    ]),
                  ),
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  )
                ]));
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

        return Container(
            padding: const EdgeInsets.only(left: 2.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(subNumber,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14.0)),
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext, style: new TextStyle(fontSize: 14.0))
                    ]),
                  ),
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  )
                ]));
        break;

      // Section Paragraph
      case "4":
        return Container(
            padding: const EdgeInsets.only(left: 20.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(pinpoint,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14.0)),
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext, style: new TextStyle(fontSize: 14.0))
                    ]),
                  ),
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  ),
                ]));
        break;

      // Subsection SubmarginalNote
      case "5":
        return Container(
            padding: const EdgeInsets.only(left: 2.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext,
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.0))
                    ]),
                  ),
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  )
                ]));
        break;

      // Subsection paragraph
      case "6":
        return Container(
            padding: const EdgeInsets.only(left: 20.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(pinpoint,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14.0)),
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext, style: new TextStyle(fontSize: 14.0))
                    ]),
                  ),
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  ),
                ]));
        break;

      // Subparagraph
      case "7":
        return Container(
            padding: const EdgeInsets.only(left: 44.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(pinpoint,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14.0)),
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext, style: new TextStyle(fontSize: 14.0))
                    ]),
                  ),
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  ),
                ]));
        break;

      // Subsection subParagraph
      case "8":
        return Container(
            padding: const EdgeInsets.only(left: 44.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(pinpoint,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14.0)),
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext, style: new TextStyle(fontSize: 14.0))
                    ]),
                  ),
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  ),
                ]));
        break;

      // HistoricalNote
      case "9":
        return Container(
            padding: const EdgeInsets.only(left: 2.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext,
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10.0))
                    ]),
                  ),
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  )
                ]));
        break;

      // Definition english name
      case "10":
        return Container(
            padding: const EdgeInsets.only(left: 2.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext,
                          style: new TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 16.0))
                    ]),
                  ),
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  )
                ]));
        break;

      // Definition MarginalNote
      case "11":
        return Container(
            padding: const EdgeInsets.only(left: 2.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext, style: new TextStyle(fontSize: 14.0))
                    ]),
                  ),
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  )
                ]));
        break;

      // Section Paragraph
      case "12":
        return Container(
            padding: const EdgeInsets.only(left: 16.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext, style: new TextStyle(fontSize: 14.0))
                    ]),
                  ),
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  ),
                ]));
        break;

      // Continued Subsection Paragraph Text
      case "13":
        return Container(
            padding: const EdgeInsets.only(left: 20.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext, style: new TextStyle(fontSize: 14.0))
                    ]),
                  ),
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  ),
                ]));
        break;

      // Continued Subsection Text
      case "14":
        return Container(
            padding: const EdgeInsets.only(left: 2.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext, style: new TextStyle(fontSize: 14.0))
                    ]),
                  ),
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  ),
                ]));
        break;

      // Subparagraph Clause
      case "15":
        return Container(
            padding: const EdgeInsets.only(left: 68.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(pinpoint,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14.0)),
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext, style: new TextStyle(fontSize: 14.0))
                    ]),
                  ),
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  ),
                ]));
        break;

      // Formula Term Text
      case "16":
        return Container(
            color: Colors.green,
            padding: const EdgeInsets.only(left: 2.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  ),
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext,
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.0))
                    ]),
                  )
                ]));
        break;

      // Subclause
      case "17":
        return Container(
            padding: const EdgeInsets.only(left: 92.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(pinpoint,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 14.0)),
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext, style: new TextStyle(fontSize: 14.0))
                    ]),
                  ),
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  )
                ]));
        break;

      // Continued Subsection Subparagraph
      case "18":
        return Container(
            color: Colors.green,
            padding: const EdgeInsets.only(left: 2.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  ),
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext,
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.0))
                    ]),
                  )
                ]));
        break;

      // Sub Sub Clause
      case "19":
        return Container(
            color: Colors.green,
            padding: const EdgeInsets.only(left: 2.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  ),
                  new Text(pinpoint,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0)),
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext,
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.0))
                    ]),
                  )
                ]));
        break;

      // Continued Clause
      case "20":
        return Container(
            color: Colors.green,
            padding: const EdgeInsets.only(left: 2.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  ),
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext,
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.0))
                    ]),
                  )
                ]));
        break;

      // Continued Subclause
      case "21":
        return Container(
            color: Colors.green,
            padding: const EdgeInsets.only(left: 2.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    type,
                    style: new TextStyle(color: Color.fromRGBO(8, 1, 2, 0.5)),
                  ),
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext,
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.0))
                    ]),
                  )
                ]));
        break;

      default:
        return Container(
            color: Colors.orange,
            padding: const EdgeInsets.only(left: 2.0, top: 2.0, bottom: 2.0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(type),
                  new Text(section,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0)),
                  new Flexible(
                    child: new Column(children: <Widget>[
                      Text(fulltext,
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14.0))
                    ]),
                  ),
                  new Divider()
                ]));
        break;
    }
  }
}
