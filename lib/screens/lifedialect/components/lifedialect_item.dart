import 'package:flutter/material.dart';
import 'package:jejudialect/constants/strings.dart';
import 'package:jejudialect/models/life_dialect.dart';
import 'package:jejudialect/screens/lifedialect/lifedialect_detail_screen.dart';
import 'package:jejudialect/widgets/custom_tile.dart';

class LifeDialectItem extends StatelessWidget {
  final Litem item;

  const LifeDialectItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return CustomTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => LifeDialectDetailScreen(item: item,)
        ));
      },
      title: Text(
        item.siteName.replaceAll('n', ' ').replaceAll('\\', ''),
        style: TextStyle(
          fontSize: 18,
        ),
      ),
      subtitle: Text(
        item.name.replaceAll('n', ' ').replaceAll('\\', ''),
        style: TextStyle(
          fontSize: 12
        ),),
      leading: Container(
        constraints: BoxConstraints(maxHeight: 60, maxWidth: 60),
        child: Stack(
          children: <Widget>[
            Hero(
              tag: item.image1Url,
              child: CircleAvatar(
                backgroundImage: NetworkImage("$baseUrl/${item.image1Url}"),
                maxRadius: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
