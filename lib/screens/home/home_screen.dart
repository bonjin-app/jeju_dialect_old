import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jejudialect/screens/dictionary/dictionary_screen.dart';
import 'package:jejudialect/screens/keyword/keyword_screen.dart';
import 'package:jejudialect/screens/lifedialect/lifedialect_screen.dart';
import 'package:jejudialect/screens/proverb/proverb_screen.dart';
import 'package:jejudialect/widgets/category_card.dart';
import 'package:jejudialect/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffffc266),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 54),
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  '제주 말싸 미',
                  style: Theme.of(context)
                      .textTheme
                      // ignore: deprecated_member_use
                      .display1
                      .copyWith(fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                height: 42,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(13),
                ),
                margin: EdgeInsets.only(top: 120, left: 20, right: 40),
                padding: EdgeInsets.only(left: 48, right: 16, top: 16, bottom: 16),
              ),
              Container(
                height: 42,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(13),
                ),
                margin: EdgeInsets.only(top: 140, left: 40, right: 20),
                padding: EdgeInsets.only(left: 48, right: 16, top: 16, bottom: 16),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: <Widget>[
                CategoryCard(
                  title: "제주 생활 방언",
                  svgSrc: "assets/icons/dialect.svg",
                  press: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
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
                      CupertinoPageRoute(
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
                      CupertinoPageRoute(
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
                      CupertinoPageRoute(
                          builder: (context) => KeywordScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
