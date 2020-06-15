import 'package:flutter/material.dart';
import 'package:jejudialect/constants/strings.dart';
import 'package:jejudialect/models/life_dialect.dart';

class LifeDialectDetailScreen extends StatelessWidget {
  final Item item;

  const LifeDialectDetailScreen({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Image(
                  image: NetworkImage("$baseUrl/${item.image1Url}"),
                ),
              ),

              SizedBox(height: 30,),
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "분류",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      item.type,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey
                      ),
                    ),

                    SizedBox(height: 30,),
                    Text(
                      "제주방언",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      item.contents,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey
                      ),
                    ),

                    SizedBox(height: 30,),
                    Text(
                      "고어",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      item.original,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey
                      ),
                    ),

                    SizedBox(height: 30,),
                    Text(
                      "표준말",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      item.solution,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
