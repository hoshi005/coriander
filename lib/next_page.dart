
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {

  final String _name;

  NextPage(this._name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("次の画面"),
        actions: [
          Icon(Icons.add),
          Icon(Icons.share),
        ],
      ),
      body: Container(
        height: double.infinity,
        color: Colors.redAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_name),
              ElevatedButton(
                child: Text("戻る"),
                onPressed: () {
                  Navigator.pop(context, "ドラム練習中");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}