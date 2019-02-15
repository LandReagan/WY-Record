import 'package:flutter/material.dart';

import 'package:wyrecord/pages/TakeOffCardPage.dart';

class LandingPage extends StatelessWidget {

  void _onNewRequest(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TakeOffCardPage())
    );
  }

  void _onRecordsRequest() {}

  void _onSettingsRequest() {}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('WY Take Off Card'),
      ),
      body: getBodyWidget(context),
    );
  }

  Widget getBodyWidget(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            color: Colors.white10,
            textColor: Colors.white,
            child: Text('New', textScaleFactor: 2.0,),
            onPressed: () => _onNewRequest(context),
          ),
          RaisedButton(
            color: Colors.white10,
            textColor: Colors.white,
            child: Text('Records', textScaleFactor: 2.0,),
            onPressed: _onRecordsRequest,
          ),
          RaisedButton(
            color: Colors.white10,
            textColor: Colors.white,
            child: Text('Settings', textScaleFactor: 2.0,),
            onPressed: _onSettingsRequest,
          ),
        ],
      ),
    );
  }
}
