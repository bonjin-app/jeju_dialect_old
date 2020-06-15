import 'package:flutter/material.dart';
import 'package:jejudialect/constants/strings.dart';
import 'package:jejudialect/models/life_dialect.dart';
import 'package:jejudialect/providers/lifedialect_provider.dart';
import 'package:jejudialect/screens/lifedialect/components/lifedialect_item.dart';
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
        title: Text(
          "제주방언"
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        itemCount: items.length,
        itemBuilder: (context, index) {

          return LifeDialectItem(item: items[index],);
        },
      ),
    );
  }
}
