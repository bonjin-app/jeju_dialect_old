import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jejudialect/screens/dictionary/dictionary_screen.dart';
import 'package:jejudialect/screens/keyword/keyword_screen.dart';
import 'package:jejudialect/screens/lifedialect/lifedialect_screen.dart';
import 'package:jejudialect/screens/proverb/proverb_screen.dart';

void main() {
  runApp(MaterialApp(
    title: '제주방언',
    home: Scaffold(
      appBar: AppBar(
        title: Text("제주 방언"),
      ),
      body: HomeScreen(),
    ),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "제주 방언",
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 3,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(
              image: AssetImage('images/jeju.png'),
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new SizedBox(
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
                  ),
                ),
                new SizedBox(
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
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new SizedBox(
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
                  ),
                ),
                new SizedBox(
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
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
