import 'package:flutter/material.dart';
import 'package:jejudialect/models/dictionary.dart';
import 'package:jejudialect/widgets/search_bar.dart';
import 'package:provider/provider.dart';
import 'package:jejudialect/providers/dictionary_provider.dart';

import 'components/dictionary_item.dart';

class DictionaryScreen extends StatefulWidget {
  @override
  _DictionaryScreenState createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  DictionaryProvider dictionaryProvider;

  List<Ditem> items = [];
  String query;

  @override
  void initState() {
    super.initState();
    dictionaryProvider = Provider.of<DictionaryProvider>(context, listen: false);
    dictionaryProvider.requestDictionaries().then((value) {
      setState(() {
        items = dictionaryProvider.dictionary.jejunetApi.items.item;
      });
    });
  }

  Widget filterSearchResults() {

    var list = items.where((item) {
      return (query == null || query == "") ?  true : item.name.contains(query);
    }).toList();

    if(list.length == 0 || list.length == null) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '조회된 정보가 없습니다',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black38
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }else {
      return ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return DictionaryItem(item: list[index]);
        },
      );
    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '제주 사전',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black54,
          ),
        ),
        elevation: 0,
        backgroundColor: Color(0xffffc266),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffffc266),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)
              ),
            ),
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 32),
              child: SearchBar(onChanged: (value) {

                setState(() {
                  query = value;
                });
              },),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: filterSearchResults(),
            ),
          ),
        ],
      ),
    );
  }
}
