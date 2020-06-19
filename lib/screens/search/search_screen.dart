import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jejudialect/models/life_dialect.dart';
import 'package:jejudialect/providers/lifedialect_provider.dart';
import 'package:jejudialect/screens/lifedialect/components/lifedialect_item.dart';
import 'package:jejudialect/widgets/search_bar.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen>
    with AutomaticKeepAliveClientMixin {
  LifeDialectProvider lifeDialectProvider;

  List<Item> items = [];

  @override
  void initState() {
    super.initState();
    lifeDialectProvider =
        Provider.of<LifeDialectProvider>(context, listen: false);
    lifeDialectProvider.requestLifeDialects().then((value) {
      setState(() {
        items = lifeDialectProvider.lifeDialect.jejunetApi.items.item;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 220,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                  color: Color(0xffffc266),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 54),
                  child: Text(
                    '검색',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
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

  @override
  bool get wantKeepAlive => true;
}
