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

  List<Item> items = [];

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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffffc266),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xffffc266),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  width: double.infinity,
                  child: Text(
                    '제주 속담',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: SearchBar(),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: ListView.builder(
                padding: EdgeInsets.all(16),
                shrinkWrap: true,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ProverbItem(item: items[index],);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
