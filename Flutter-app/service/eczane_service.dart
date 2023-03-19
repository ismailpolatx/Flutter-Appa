import 'dart:convert';

import '../Model/Eczaneler.dart';
import 'package:http/http.dart' as http;

class eczaneservices {

      final String url ="https://openapi.izmir.bel.tr/api/ibb/nobetcieczaneler";
      Future<Eczaneler?> fetcheczane() async{
          var res = await http.get(Uri.parse(url));
          if(res.statusCode == 200) {
            var jsonBody = Eczaneler.fromJson(jsonDecode(res.body));
            return jsonBody;
          }
          else {
            print("İstek Başarısız Oldu => ${res.statusCode}");
          }
          
      }
}
