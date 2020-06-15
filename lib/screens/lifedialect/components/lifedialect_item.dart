import 'package:flutter/material.dart';
import 'package:jejudialect/constants/strings.dart';
import 'package:jejudialect/models/life_dialect.dart';
import 'package:jejudialect/widgets/custom_tile.dart';

class LifedialectItem extends StatelessWidget {
  final Item item;

  const LifedialectItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      onTap: () {
      },
      title: Text(
        item.siteName,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      subtitle: Text(item.name,),
      leading: Container(
        constraints: BoxConstraints(maxHeight: 60, maxWidth: 60),
        child: Stack(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage("$baseUrl/${item.image1Url}"),
              maxRadius: 30,
            ),
          ],
        ),
      ),
    );
  }
}
