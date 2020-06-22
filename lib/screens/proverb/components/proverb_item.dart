import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jejudialect/models/proverb.dart';
import 'package:jejudialect/screens/proverb/proverb_detail_screen.dart';
import 'package:jejudialect/widgets/custom_tile.dart';

class ProverbItem extends StatelessWidget {
  final Pitem item;

  const ProverbItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return CustomTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ProverbDetailScreen(item: item)
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
