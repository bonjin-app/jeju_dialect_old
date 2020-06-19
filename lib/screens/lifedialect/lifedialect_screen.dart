import 'package:flutter/material.dart';
import 'package:jejudialect/models/life_dialect.dart';
import 'package:jejudialect/providers/lifedialect_provider.dart';
import 'package:jejudialect/screens/lifedialect/components/lifedialect_item.dart';
import 'package:jejudialect/widgets/search_bar.dart';
import 'package:provider/provider.dart';

class LifeDialectScreen extends StatefulWidget {
  @override
  _LifeDialectScreenState createState() => _LifeDialectScreenState();
}

class _LifeDialectScreenState extends State<LifeDialectScreen> {

  LifeDialectProvider lifeDialectProvider;

  List<Item> items = [];

  @override
  void initState() {
    super.initState();
    lifeDialectProvider = Provider.of<LifeDialectProvider>(context, listen: false);
    lifeDialectProvider.requestLifeDialects().then((value) {
      setState(() {
        items = lifeDialectProvider.lifeDialect.jejunetApi.items.item;
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
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 180,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xffffc266),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)
                  ),
                ),
                child: Container(
                  child: Text(
                    '제주 생활방언',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.all(16),
                child: SearchBar(),
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return LifeDialectItem(item: items[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}