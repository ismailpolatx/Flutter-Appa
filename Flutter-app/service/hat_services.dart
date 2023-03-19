import 'dart:convert';

import '../Model/hatlar.dart.';
import 'package:http/http.dart' as http;

class Hatservices {

  final String url ="https://openapi.izmir.bel.tr/api/eshot/hatara/%7Bkriter";
  Future<Hatlar?> fetcheczane() async{
    var res = await http.get(Uri.parse(url));
    if(res.statusCode == 200) {
      var jsonBody = Hatlar.fromJson(jsonDecode(res.body));
      return jsonBody;
    }
    else {
      print("İstek Başarısız Oldu => ${res.statusCode}");
    }

  }
}
