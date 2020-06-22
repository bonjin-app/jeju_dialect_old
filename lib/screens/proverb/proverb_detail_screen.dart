import 'package:flutter/material.dart';
import 'package:jejudialect/models/proverb.dart';

class ProverbDetailScreen extends StatelessWidget {
  final Pitem item;

  const ProverbDetailScreen({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String _name = item.name.replaceAll('\\\&\#', '');
    String n = _name.replaceAll('\;','');
    List<int> charCodes = [];

    String q = '';

    for(int i = 0; i<n.length; i++){
      if(!(n.codeUnitAt(i) >= '0'.codeUnitAt(0) && n.codeUnitAt(i) <= '9'.codeUnitAt(0))){
        charCodes.add(n.codeUnitAt(i));
        q = '';
      }else{
        int num = int.parse(String.fromCharCode(n.codeUnitAt(i)));
        q = q + num.toString();
        if (q.length > 4) {
          charCodes.add(int.parse(q));
        }
      }
    }
    String name = String.fromCharCodes(charCodes);

    return Scaffold(
      appBar: AppBar(
        title: Text('속담풀이'),
        backgroundColor: Color(0xffffc266),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '분류',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      item.index,
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontFamily: 'Yethan',
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      item.contents,
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'English',
                      style: TextStyle(fontSize: 18,),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      item.engContents,
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '中文',
                      style: TextStyle(fontSize: 18,),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      item.chiContents,
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '日本',
                      style: TextStyle(fontSize: 18,),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      item.janContents,
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
//        physics: BouncingScrollPhysics(),
//        child: Container(
//          child: Column(
//            crossAxisAlignment: CrossAxisAlignment.start,
//            children: <Widget>[
//              SizedBox(
//                height: 8,
//              ),
//              Container(
//                padding: EdgeInsets.all(16),
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: <Widget>[
//                    Text(
//                      "설명",
//                      style: TextStyle(
//                        fontSize: 24,
//                      ),
//                    ),
//                    SizedBox(
//                      height: 8,
//                    ),
//                    Text(
//                      item.contents,
//                      style: TextStyle(fontSize: 18, color: Colors.grey),
//                    ),
//                    Container(
//                      margin: EdgeInsets.symmetric(vertical: 30),
//                      width: double.infinity,
//                      height: 2,
//                      color: Colors.grey,
//                    ),
//                    Text(
//                      "분류",
//                      style: TextStyle(
//                        fontSize: 24,
//                      ),
//                    ),
//                    SizedBox(
//                      height: 8,
//                    ),
//                    Text(
//                      item.original,
//                      style: TextStyle(fontSize: 18, color: Colors.grey),
//                    ),
//                    Container(
//                      margin: EdgeInsets.symmetric(vertical: 30),
//                      width: double.infinity,
//                      height: 2,
//                      color: Colors.grey,
//                    ),
//                    Text(
//                      "관련서적",
//                      style: TextStyle(
//                        fontSize: 24,
//                      ),
//                    ),
//                    SizedBox(
//                      height: 8,
//                    ),
//                    Container(
//                      margin: EdgeInsets.symmetric(vertical: 30),
//                      width: double.infinity,
//                      height: 2,
//                      color: Colors.grey,
//                    ),
//                    Text(
//                      "관련어",
//                      style: TextStyle(
//                        fontSize: 24,
//                      ),
//                    ),
//                    SizedBox(
//                      height: 8,
//                    ),
//                  ],
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
    );
  }
}
