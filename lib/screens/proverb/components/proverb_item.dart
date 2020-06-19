import 'package:flutter/material.dart';
import 'package:jejudialect/models/proverb.dart';
import 'package:jejudialect/widgets/custom_tile.dart';

class ProverbItem extends StatelessWidget {
  final Item item;

  const ProverbItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return CustomTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
        ));
      },
      title: Text(
        item.name,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
