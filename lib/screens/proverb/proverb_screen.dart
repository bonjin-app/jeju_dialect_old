import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jejudialect/models/proverb.dart';
import 'package:jejudialect/providers/proverb_provider.dart';
import 'package:jejudialect/screens/proverb/components/proverb_item.dart';
import 'package:jejudialect/widgets/search_bar.dart';
import 'package:provider/provider.dart';

class ProverbScreen extends StatefulWidget {
  @override
  _ProverbScreenState createState() => _ProverbScreenState();
}

class _ProverbScreenState extends State<ProverbScreen>{

  ProverbProvider proverbProvider;

  List<Pitem> items = [];
  String query;

  @override
  void initState() {
    super.initState();
    proverbProvider = Provider.of<ProverbProvider>(context, listen: false);
    proverbProvider.requestProverbs().then((value) {
      setState(() {
        items = proverbProvider.proverb.jejunetApi.items.item;
      });
    });
  }

  Widget filterSearchResults() {

    var list = items.where((item) {
      return (query == null || query == "") ?  true : item.name.contains(query);
    }).toList();

    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ProverbItem(item: list[index]);
      },
    );

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '제주 속담',
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
