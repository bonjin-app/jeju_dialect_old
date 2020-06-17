import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jejudialect/screens/dictionary/dictionary_screen.dart';
import 'package:jejudialect/screens/keyword/keyword_screen.dart';
import 'package:jejudialect/screens/lifedialect/lifedialect_screen.dart';
import 'package:jejudialect/screens/proverb/proverb_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String _longText = '제줏 말싸미';
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          _longText,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFF5F8FD),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: TextField(

                                  decoration: InputDecoration(
                                    hintText: 'search',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                },
                                child: Container(child: Icon(Icons.search)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: RaisedButton(
                            child: Text("제주방언"),
                            textColor: Colors.white,
                            color: Colors.orange,
                            onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LifeDialectScreen()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0))),
                      ),
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: RaisedButton(
                            child: Text("제주속담"),
                            textColor: Colors.white,
                            color: Colors.orange,
                            onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProverbScreen()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0))),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: RaisedButton(
                            child: Text("제주 사전"),
                            textColor: Colors.white,
                            color: Colors.orange,
                            onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DictionaryScreen()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0))),
                      ),
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: RaisedButton(
                            child: Text("색인어 사전"),
                            textColor: Colors.white,
                            color: Colors.orange,
                            onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => KeywordScreen()));
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
