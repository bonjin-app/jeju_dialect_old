import 'package:flutter/material.dart';
import 'package:jejudialect/constants/strings.dart';
import 'package:jejudialect/models/life_dialect.dart';
import 'package:jejudialect/providers/lifedialect_provider.dart';
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
        title: Text('생활방언'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: lifeDialectProvider.lifeDialect.jejunetApi.items.item.length,
        itemBuilder: (context, index) {

          var items = lifeDialectProvider.lifeDialect.jejunetApi.items.item;

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("$baseUrl/${items[index].image1Url}"),
            ),
            title: Text(items[index].name),
            subtitle: Text(items[index].siteName),
          );
        },
      ),
    );
  }
}
