import 'package:flutter/material.dart';
import 'package:salary/model/news.dart';
import 'package:salary/services/news_service.dart';

class BeritaProvider extends ChangeNotifier {
  List<BeritaModel>? _listBerita;

  List<BeritaModel> get beritaModel => _listBerita!;
  set beritaModel(List<BeritaModel> listBerita) {
    _listBerita = listBerita;
    notifyListeners();
  }

  Future<List<BeritaModel>> getAllBerita() async {
    var data = await NewsService().getAllBerita();
    _listBerita = data;
    return _listBerita!;
  }
}
