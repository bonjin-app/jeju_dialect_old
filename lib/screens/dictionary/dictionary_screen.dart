import 'package:flutter/material.dart';
import 'package:jejudialect/models/dictionary.dart';
import 'package:provider/provider.dart';
import 'package:jejudialect/providers/dictionary_provider.dart';

class DictionaryScreen extends StatefulWidget {
  @override
  _DictionaryScreenState createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  DictionaryProvider dictionaryProvider;

  List<Item> items = [];

  @override
  void initState() {
    super.initState();
    dictionaryProvider = Provider.of<DictionaryProvider>(context, listen: false);
    dictionaryProvider.requestDictionaries().then((value) {
      setState(() {
        items = dictionaryProvider.dictionary.jejunetApi.list.item;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('제주사전'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {

          return ListTile(

            title: Text(items[index].name),
            subtitle: Column(
              children: <Widget>[
                Text(items[index].contents),
                Text(items[index].engContents),
                Text(items[index].chiContents),
              ],
            ),
            trailing: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.red,
              ),
              child: IconButton(
                icon: Icon(Icons.audiotrack, color: Colors.white,),
                onPressed: () {

                },
              ),
            ),
          );
        },
      ),
    );
  }
}
