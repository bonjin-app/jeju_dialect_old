import 'package:flutter/material.dart';
import 'package:jejudialect/providers/lifedialect_provider.dart';
import 'package:jejudialect/screens/dictionary/dictionary_screen.dart';
import 'package:jejudialect/screens/keyword/keyword_screen.dart';
import 'package:jejudialect/screens/lifedialect/lifedialect_screen.dart';
import 'package:jejudialect/screens/proverb/proverb_screen.dart';
import 'package:provider/provider.dart';

class SampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LifeDialectProvider>(context);

    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.orange,
                child: Text(
                  "생활방언",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LifeDialectScreen()));
                },
              ),
              RaisedButton(
                color: Colors.red,
                child: Text(
                  "속담사전",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProverbScreen()));
                },
              ),
              RaisedButton(
                color: Colors.blue,
                child: Text(
                  "방언색인어사전",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => KeywordScreen()));
                },
              ),
              RaisedButton(
                color: Colors.green,
                child: Text(
                  "방언사전",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DictionaryScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
