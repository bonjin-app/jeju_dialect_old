import 'package:flutter/material.dart';
import 'package:jejudialect/models/proverb.dart';
import 'package:jejudialect/providers/proverb_provider.dart';
import 'package:provider/provider.dart';

class ProverbScreen extends StatefulWidget {
  @override
  _ProverbScreenState createState() => _ProverbScreenState();
}

class _ProverbScreenState extends State<ProverbScreen> {

  ProverbProvider proverbProvider;

  List<Item> items = [];

  @override
  void initState() {
    super.initState();
    proverbProvider = Provider.of<ProverbProvider>(context, listen: false);
    proverbProvider.requestProverbs().then((value) {
      setState(() {
        items = proverbProvider.proverb.jejunetApi.items.item;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('색인어사전'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {

          return ListTile(

            title: Text(items[index].name),
            subtitle: Column(
              children: <Widget>[
                Text(items[index].contents),
                Text(items[index].engContents),
                Text(items[index].chiContents),
              ],
            ),
            trailing: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.red,
              ),
              child: IconButton(
                icon: Icon(Icons.audiotrack, color: Colors.white,),
                onPressed: () {

                },
              ),
            ),
          );
        },
      ),
    );
  }
}
