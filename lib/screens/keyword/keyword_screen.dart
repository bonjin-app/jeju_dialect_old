import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:jejudialect/models/keyword.dart';
import 'package:jejudialect/providers/keyword_provider.dart';

class KeywordScreen extends StatefulWidget {
  @override
  _KeywordScreenState createState() => _KeywordScreenState();
}

class _KeywordScreenState extends State<KeywordScreen> {
  KeywordProvider keywordProvider;

  List<Item> items = [];

  @override
  void initState() {
    super.initState();

    keywordProvider = Provider.of<KeywordProvider>(context, listen: false);
    keywordProvider.requestKeywords().then((value) {
      setState(() {
        items = keywordProvider.keyword.jejunetApi.items.item;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('색인어사전'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {

          return ListTile(
            title: Text(items[index].name),
            subtitle: Text(items[index].contents),
          );
        },
      ),
    );
  }
}
