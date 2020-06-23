import 'package:flutter/material.dart';
import 'package:jejudialect/models/notation.dart';
import 'package:jejudialect/providers/notation_provider.dart';
import 'package:jejudialect/screens/notation/components/notation_item.dart';

class NotationScreen extends StatelessWidget {
  var notationProvider = NotationProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: FutureBuilder<Notation>(
          future: notationProvider.requestNotation(context),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var notation = snapshot.data;
              return ListView.builder(
                itemCount: notation.data.length,
                itemBuilder: (context, index) {
                  return NotationItem(data: notation.data[index]);
                },
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
