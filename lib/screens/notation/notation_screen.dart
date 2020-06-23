import 'package:flutter/material.dart';
import 'package:jejudialect/models/notation.dart';
import 'package:jejudialect/providers/notation_provider.dart';
import 'package:jejudialect/screens/notation/components/notation_item.dart';

class NotationScreen extends StatelessWidget {
  var notationProvider = NotationProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffc266),
        elevation: 0,
        title: Text(
        '표기법',
        )
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: FutureBuilder<Notation>(
          future: notationProvider.requestNotation(context),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var notation = snapshot.data;
              return ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: notation.data.length,
                itemBuilder: (context, index) {
                  return NotationItem(data: notation.data[index]);
                },
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
