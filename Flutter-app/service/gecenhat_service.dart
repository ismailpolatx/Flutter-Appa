import 'dart:convert';

import '../Model/gecenhatlar.dart.';
import 'package:http/http.dart' as http;

class gecenhatservices {

  final String url ="https://openapi.izmir.bel.tr/api/eshot/yakinduraklar/%7Benlem%7D/%7Bboylam%7D";
  Future<GecenHatlar?> fetcheczane() async{
    var res = await http.get(Uri.parse(url));
    if(res.statusCode == 200) {
      var jsonBody = GecenHatlar.fromJson(jsonDecode(res.body));
      return jsonBody;
    }
    else {
      print("İstek Başarısız Oldu => ${res.statusCode}");
    }

  }
}
