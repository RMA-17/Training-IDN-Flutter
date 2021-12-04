import 'package:flutter/material.dart';
import 'package:salary/model/salary.dart';
import 'package:salary/services/salary_service.dart';

class SalaryProvider extends ChangeNotifier {
  SalaryModel? _salaryModel;

  SalaryModel get data => _salaryModel!;

  set data(SalaryModel salaryModel) {
    _salaryModel = salaryModel;
    notifyListeners();
  }

  Future<void> getPenggajian() async {
    try {
      SalaryModel data = await SalaryService().getPenggajian();
      _salaryModel = data;
    } catch (e) {
      print(e);
    }
  }
}
