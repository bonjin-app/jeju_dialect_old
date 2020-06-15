import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:jejudialect/models/keyword.dart';
import 'package:jejudialect/models/proverb.dart';
import 'package:logger/logger.dart';
import 'package:xml2json/xml2json.dart';
import 'dart:convert' as convert;

import 'package:jejudialect/constants/strings.dart';

class KeywordProvider with ChangeNotifier {
  final Logger _logger = Logger();

  Keyword _keyword;
  Keyword get keyword => _keyword;

  //
  KeywordProvider() {
    _logger.d("KeywordProvider init");
  }

  void setData(Keyword keyword) {
    _logger.d("KeywordProvider setData");

    _keyword = keyword;
    notifyListeners();
  }

  Future<bool> requestKeywords() async {
    _logger.d("KeywordProvider requestKeywords");

    try {
      final response = await http.get(proverbUrl);
      if (response.statusCode == 200) {

        final body = response.body;
        final Xml2Json _parser = Xml2Json()..parse(body);
        final jsonString = _parser.toParker();
        final json = convert.jsonDecode(jsonString);
        final keyword = Keyword.fromJson(json);
        setData(keyword);

        return true;
      }
      return false;

    } catch(e) {
      _logger.d(e.toString());
      return false;
    }
  }
}