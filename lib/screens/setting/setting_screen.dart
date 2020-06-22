import 'package:flutter/material.dart';
import 'package:jejudialect/screens/setting/components/language_setting.dart';

import 'components/versionInfo_screen.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          '설정',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        backgroundColor: Color(0xffffc266),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffc266),
        ),
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              margin: EdgeInsets.only(left: 16, right: 16, top: 50),
              padding: EdgeInsets.only(top: 16, right: 8, left: 8, bottom: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '   앱정보',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  FlatButton.icon(
                    label: Text(
                      '언어',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    icon: Icon(
                      Icons.supervised_user_circle,
                      size: 32,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => LanguageSetting()
                      ));
                    },
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: Colors.black54,
                    height: 1,
                  ),
                  FlatButton.icon(
                    label: Text(
                      '버전 정보',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    icon: Icon(
                      Icons.info_outline,
                      size: 32,
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => VersionInfoScreen()
                      ));
                    },
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    color: Colors.black54,
                    height: 1,
                  ),
                  FlatButton.icon(
                    label: Text(
                      '앱 정보',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    icon: Icon(
                      Icons.info_outline,
                      size: 32,
                    ),
                    onPressed: () {
                      print('안녕칭구들');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
