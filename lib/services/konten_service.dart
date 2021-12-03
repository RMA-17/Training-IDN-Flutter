import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:salary/model/konten.dart';

class KontenService {
  String baseUrl = 'https://bootcamp.jagoantech.com/api';

  Future<List<KontenModel>> getAllContent() async {
    Uri url = Uri.parse('$baseUrl/konten');
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(url, headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var result = data['data'] as List;
      List<KontenModel> list =
          result.map((json) => KontenModel.fromJson(json)).toList();
      return list;
    } else {
      throw Exception('Gagal memuat konten!');
    }
  }
}
