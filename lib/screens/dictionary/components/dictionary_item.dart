import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jejudialect/models/dictionary.dart';
import 'package:jejudialect/screens/dictionary/dictionary_detail_screen.dart';
import 'package:jejudialect/widgets/custom_tile.dart';

class DictionaryItem extends StatelessWidget {
  final Ditem item;

  const DictionaryItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return CustomTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => DictionaryDetailScreen(item: item)
        ));
      },
      title: Text(
        item.name.replaceAll('n', ' '),
        style: TextStyle(
          fontFamily: 'Yethan',
          fontSize: 16,
          fontWeight: FontWeight.w600
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
