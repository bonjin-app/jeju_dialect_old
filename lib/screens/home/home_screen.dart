import 'package:flutter/material.dart';
import 'package:jejudialect/providers/lifedialect_provider.dart';
import 'package:jejudialect/screens/lifedialect/lifedialect_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LifeDialectProvider>(context);

    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Colors.grey,
                child: Text(
                  "LifeDialectProvider",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  provider.requestLifeDialects().then((value) {
                    print("value : $value");
                  });
                },
              ),
              RaisedButton(
                color: Colors.orange,
                child: Text(
                  "LifeDialect Screen",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LifeDialectScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
