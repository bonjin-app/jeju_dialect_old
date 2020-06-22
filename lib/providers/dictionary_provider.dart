import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:jejudialect/models/dictionary.dart';
import 'package:logger/logger.dart';
import 'package:xml2json/xml2json.dart';
import 'dart:convert' as convert;

import 'package:jejudialect/constants/strings.dart';

class DictionaryProvider with ChangeNotifier {
  final Logger _logger = Logger();

  Dictionary _dictionary;
  Dictionary get dictionary => _dictionary;

  DictionaryProvider() {
    _logger.d("DictionaryProvider init");
  }

  void setData(Dictionary dictionary) {
    _logger.d("DictionaryProvider setData");

    _dictionary = dictionary;
    notifyListeners();
  }

  Future<bool> requestDictionaries() async {
    _logger.d("DictionaryProvider requestDictionaries");

    try {
      var queryParam = {
        "pageSize" : "999",
      };
      var uri = Uri.https(authority, dictionaryPath, queryParam);
      final response = await http.get(uri);

//      final response = await http.get(dictionaryUrl);
      if (response.statusCode == 200) {

        final body = response.body;
        final Xml2Json _parser = Xml2Json()..parse(body);
        final jsonString = _parser.toParker();
        final json = convert.jsonDecode(jsonString);
        final dictionary = Dictionary.fromJson(json);
        setData(dictionary);

        return true;
      }
      return false;

    } catch(e) {
      _logger.d(e.toString());
      return false;
    }
  }
}