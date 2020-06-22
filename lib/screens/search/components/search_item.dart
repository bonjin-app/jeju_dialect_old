import 'package:flutter/material.dart';
import 'package:jejudialect/constants/strings.dart';
import 'package:jejudialect/models/life_dialect.dart';
import 'package:jejudialect/screens/lifedialect/lifedialect_detail_screen.dart';
import 'package:jejudialect/screens/search/search_screen.dart';
import 'package:jejudialect/widgets/custom_tile.dart';

class SearchItem extends StatelessWidget {
  final Item item;

  const SearchItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return CustomTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
//            builder: (context) => ProverbDetailScreen(item: item)
        ));
      },
      title: Text(
        item.name,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      trailing: Row(
        children: <Widget>[
          Icon(
            Icons.keyboard_arrow_right,
          ),
        ],
      ),
    );
  }
}
