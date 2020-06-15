import 'package:flutter/material.dart';
import 'package:jejudialect/providers/dictionary_provider.dart';
import 'package:jejudialect/providers/keyword_provider.dart';
import 'package:jejudialect/providers/lifedialect_provider.dart';
import 'package:jejudialect/providers/proverb_provider.dart';
import 'package:jejudialect/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LifeDialectProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProverbProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DictionaryProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => KeywordProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
