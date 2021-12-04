import 'package:salary/model/gaji_model.dart';

class SalaryModel {
  int? id;
  String? idJabatan, namaKaryawan, status, tanggalMasuk, nomorHP, username;
  List<GajiModel>? gaji;

  SalaryModel(
      {required this.id,
      required this.idJabatan,
      required this.status,
      required this.tanggalMasuk,
      required this.namaKaryawan,
      required this.nomorHP,
      required this.username,
      required this.gaji});

  factory SalaryModel.fromJson(Map<String, dynamic> json) {
    return SalaryModel(
        id: json['id'],
        idJabatan: json['id_jabatan'],
        namaKaryawan: json['nama_karyawan'],
        status: json['status'],
        tanggalMasuk: json['tanggal_masuk'],
        nomorHP: json['nomor_hp'],
        username: json['username'],
        gaji:
            json['gaji'].map<GajiModel>((e) => GajiModel.fromJson(e)).toList());
  }

  //Dynamic adalah agar datanya biar diisi apa saja typedatanya.
  //Kalau Map adalah yang ada di daleman JSON nya.

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_jabatan': idJabatan,
      'nama_karyawan': namaKaryawan,
      'status': status,
      'nomor_hp': nomorHP,
      'tanggal_masuk': tanggalMasuk,
      'username': username,
      'gaji': gaji!.map((e) => e.toJson()).toList(),
    };
  }
}
