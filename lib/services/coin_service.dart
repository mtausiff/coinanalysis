import 'dart:convert';
import 'package:http/http.dart';
import '../constants/configurations.dart';

class Coin {

  Future<void> getCoins(String path) async {
    Response response = await get(Uri.https(Endpoints.baseUrl, path));
    Map data = jsonDecode(response.body);
    String abc = data['abc'];
  }
}
