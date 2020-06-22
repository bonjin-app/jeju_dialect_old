import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:jejudialect/models/proverb.dart';
import 'package:logger/logger.dart';
import 'package:xml2json/xml2json.dart';
import 'dart:convert' as convert;

import 'package:jejudialect/constants/strings.dart';

class ProverbProvider with ChangeNotifier {
  final Logger _logger = Logger();

  Proverb _proverb;
  Proverb get proverb => _proverb;

  //
  ProverbProvider() {
    _logger.d("ProverbProvider init");
  }

  void setData(Proverb proverb) {
    _logger.d("ProverbProvider setData");

    _proverb = proverb;
    notifyListeners();
  }

  Future<bool> requestProverbs() async {
    _logger.d("ProverbProvider requestProverbs");

    try {
      var queryParam = {
        "pageSize" : "999999999",
      };
      var uri = Uri.https(authority, proverbPath, queryParam);
      final response = await http.get(uri);

//      final response = await http.get(proverbUrl);
      if (response.statusCode == 200) {

        final body = response.body;
        final Xml2Json _parser = Xml2Json()..parse(body);
        final jsonString = _parser.toParker();
        final json = convert.jsonDecode(jsonString);
        final proverb = Proverb.fromJson(json);
        setData(proverb);

        return true;
      }
      return false;

    } catch(e) {
      _logger.d(e.toString());
      return false;
    }
  }
}