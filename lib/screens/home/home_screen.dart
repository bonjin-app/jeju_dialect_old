import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jejudialect/screens/dictionary/dictionary_screen.dart';
import 'package:jejudialect/screens/keyword/keyword_screen.dart';
import 'package:jejudialect/screens/lifedialect/lifedialect_screen.dart';
import 'package:jejudialect/screens/proverb/proverb_screen.dart';
import 'package:jejudialect/widgets/bottom_nav_bar.dart';
import 'package:jejudialect/widgets/category_card.dart';
import 'package:jejudialect/widgets/search_bar.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class HomeScreen extends StatelessWidget {
  static const String _title = 'JeJu Dialect\n      LANGUAGE';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context);
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
//            height: size.height * .45,
            decoration: BoxDecoration(
//              color: Color(0xFFF5CEB8),
              color: Color(0xffffc266),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    _title,
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "제주 생활 방언",
                          svgSrc: "assets/icons/Hamburger.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LifeDialectScreen()
                              ),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "제주 속담",
                          svgSrc: "assets/icons/Excrecises.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ProverbScreen()
                              ),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "제주 사전",
                          svgSrc: "assets/icons/Meditation.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DictionaryScreen()
                              ),
                            );
                          },
                        ),
                        CategoryCard(
                          title: "색인어 사전",
                          svgSrc: "assets/icons/yoga.svg",
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      KeywordScreen()
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
