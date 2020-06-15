import 'package:flutter/material.dart';

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
    Size size = MediaQuery.of(context).size;

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
        padding: const EdgeInsets.all(32),
        color: Colors.white,
        width: size.width,
        height: size.height,
//        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
                Positioned.fill(
                  child: Image(
                  image: AssetImage('images/jeju.png'),
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                  ),
                ),
            RaisedButton(
              child: Text("제주방언"),
              textColor: Colors.white,
              color: Colors.orange,
              onPressed: (){
                print("하이");
              },
            ),
            RaisedButton(
              child: Text("제주속담"),
              textColor: Colors.white,
              color: Colors.orange,
              onPressed: (){
                print("헿로우");
              },
            ),
            RaisedButton(
              child: Text("색인어 "),
              textColor: Colors.white,
              color: Colors.orange,
              onPressed: (){
                print("헿로우");
              },
            ),
            RaisedButton(
              child: Text("제주 사전"),
              textColor: Colors.white,
              color: Colors.orange,
              onPressed: (){
                print("헿로우");
              },
              ),
          ],
        ),
      ),
    );
  }
}
