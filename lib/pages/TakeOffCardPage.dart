import 'package:flutter/material.dart';

class TakeOffCardPage extends StatefulWidget {
  @override
  _TakeOffCardPageState createState() => _TakeOffCardPageState();
}

class _TakeOffCardPageState extends State<TakeOffCardPage> {

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WY Record'),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text('TAKE OFF CARD', textScaleFactor: 1.5,),
          ),
          Center(
            child: Row(
              children: <Widget>[
                Expanded(child: _ValueWidget('DATE:')),
                Expanded(child: _ValueWidget('FLIGHT:')),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: WeightsWidget('Zero Fuel'),
              ),
              Expanded(
                child: WeightsWidget('Take Off'),
              ),
              Expanded(
                child: WeightsWidget('Landing'),
              )
            ],
          ),
          Divider(),
          Row(
            children: <Widget>[
              Expanded(child: _ValueWidget('V1:')),
              Expanded(child: _ValueWidget('Vr:')),
              Expanded(child: _ValueWidget('V2:')),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(child: _ValueWidget('FLEX:')),
              Expanded(child: _ValueWidget('N1:')),
              Expanded(child: _ValueWidget('G.DOT:')),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(child: _ValueWidget('PAX:')),
              Expanded(child: _ValueWidget('CREW:')),
              Expanded(child: _ValueWidget('POB:')),
            ],
          ),
          Divider(),
          _ValueWidget('ATIS:'),
          _ValueWidget('CLEARANCE:')
          /*Expanded(
            child: Text('ATIS:'),
          ),
          Expanded(
            child: TextField(),
          ),
          Expanded(
            child: Text('Clearance:'),
          ),
          Expanded(
            child: TextField(),
          )*/
        ],
      )
    );
  }
}


class WeightsWidget extends StatefulWidget {

  final String title;

  WeightsWidget(this.title);

  @override
  _WeightsWidgetState createState() => _WeightsWidgetState();
}

class _WeightsWidgetState extends State<WeightsWidget> {

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(widget.title, textScaleFactor: 1.1,),
        Icon(Icons.keyboard_arrow_down),
        _ValueWidget('MAX:'),
        _ValueWidget('ACT:'),
        _ValueWidget('MAC:'),
      ],
    );
  }
}

class _ValueWidget extends StatefulWidget {

  final String _title;

  _ValueWidget(this._title);

  @override
  _ValueWidgetState createState() => _ValueWidgetState();
}

class _ValueWidgetState extends State<_ValueWidget> {

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      padding: EdgeInsets.all(3.0),
      margin: EdgeInsets.all(1.0),
      child: Row(
        children: <Widget>[
          Text(widget._title),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.black12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
