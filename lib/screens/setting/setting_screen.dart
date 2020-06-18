import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          '설정',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
                Icons.search
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.settings
            ),
          ),
        ],
        backgroundColor: Color(0xffffc266),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffc266),
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
            ),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                padding: EdgeInsets.only(top: 8, right: 8, left: 8),
                decoration: BoxDecoration(
                  color: Color(0xffeaeaea),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '   언어설정',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    FlatButton.icon(
                      label: Text('언어 설정'),
                      icon: Icon(
                          Icons.supervised_user_circle
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      color: Colors.black54,
                      height: 1,
                    ),
                    FlatButton.icon(
                      label: Text('버전 정보'),
                      icon: Icon(
                          Icons.info_outline
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      color: Colors.black54,
                      height: 1,
                    ),
                    FlatButton.icon(
                      label: Text('앱 정보'),
                      icon: Icon(
                          Icons.info_outline
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                padding: EdgeInsets.only(top: 8, right: 8, left: 8),
                decoration: BoxDecoration(
                  color: Color(0xffeaeaea),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '   앱정보',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    FlatButton.icon(
                      label: Text('언어 설정'),
                      icon: Icon(
                          Icons.supervised_user_circle
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      color: Colors.black54,
                      height: 1,
                    ),
                    FlatButton.icon(
                      label: Text('버전 정보'),
                      icon: Icon(
                          Icons.info_outline
                      ),
                      onPressed: (){
                        print('안녕칭구들');
                      },
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
                padding: EdgeInsets.only(top: 8, right: 8, left: 8),
                decoration: BoxDecoration(
                  color: Color(0xffeaeaea),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FlatButton.icon(
                      label: Text('언어 설정'),
                      icon: Icon(
                          Icons.supervised_user_circle
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      color: Colors.black54,
                      height: 1,
                    ),
                    FlatButton.icon(
                      label: Text('버전 정보'),
                      icon: Icon(
                          Icons.info_outline
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      color: Colors.black54,
                      height: 1,
                    ),
                    FlatButton.icon(
                      label: Text('앱 정보'),
                      icon: Icon(
                          Icons.info_outline
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      color: Colors.black54,
                      height: 1,
                    ),
                    FlatButton.icon(
                      label: Text('앱 정보'),
                      icon: Icon(
                          Icons.info_outline
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      color: Colors.black54,
                      height: 1,
                    ),
                    FlatButton.icon(
                      label: Text('앱 정보'),
                      icon: Icon(
                          Icons.info_outline
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
