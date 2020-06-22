import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jejudialect/models/dictionary.dart';
import 'package:jejudialect/widgets/custom_tile.dart';

class DictionaryItem extends StatelessWidget {
  final Ditem item;

  const DictionaryItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return CustomTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
//            builder: (context) => KeywordDetailScreen(item: item)
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
