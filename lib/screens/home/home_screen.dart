import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jejudialect/screens/dictionary/dictionary_screen.dart';
import 'package:jejudialect/screens/keyword/keyword_screen.dart';
import 'package:jejudialect/screens/lifedialect/lifedialect_screen.dart';
import 'package:jejudialect/screens/proverb/proverb_screen.dart';
import 'package:jejudialect/widgets/category_card.dart';
import 'package:jejudialect/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  static const String _title = '제주 말싸 미';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                margin: EdgeInsets.only(top: 74),
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  _title,
                  style: Theme.of(context)
                      .textTheme
                      // ignore: deprecated_member_use
                      .display1
                      .copyWith(fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: 12,
              ),
//              Container(
//                width: double.infinity,
//                padding: EdgeInsets.only(left: 80),
//                child: Text(
//                  '',
//                  style: TextStyle(
//                    fontSize: 12,
//                    fontWeight: FontWeight.w900,
//                    color: Colors.black54
//                  ),
//                ),
//              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SearchBar()
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                child: GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  childAspectRatio: 0.85,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: <Widget>[
                    CategoryCard(
                      title: "제주 생활 방언",
                      svgSrc: "assets/icons/dialect.svg",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LifeDialectScreen()),
                        );
                      },
                    ),
                    CategoryCard(
                      title: "제주 속담",
                      svgSrc: "assets/icons/proverb.svg",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProverbScreen()),
                        );
                      },
                    ),
                    CategoryCard(
                      title: "제주 사전",
                      svgSrc: "assets/icons/book.svg",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DictionaryScreen()),
                        );
                      },
                    ),
                    CategoryCard(
                      title: "색인어 사전",
                      svgSrc: "assets/icons/keyword.svg",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => KeywordScreen()),
                        );
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
