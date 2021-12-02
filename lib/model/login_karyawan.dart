class LoginKaryawanModel {
  int? id;
  String? idJabatan;
  String? namaKaryawan;
  String? status;
  String? tanggalMasuk;
  String? nomorHP;
  String? username;
  String? password;

  LoginKaryawanModel(
      {required this.id,
      required this.idJabatan,
      required this.status,
      required this.tanggalMasuk,
      required this.namaKaryawan,
      required this.nomorHP,
      required this.username,
      required this.password});

  factory LoginKaryawanModel.fromJson(Map<String, dynamic> json) {
    return LoginKaryawanModel(
        id: json['id'],
        idJabatan: json['id_jabatan'],
        namaKaryawan: json['nama_karyawan'],
        status: json['status'],
        tanggalMasuk: json['tanggal_masuk'],
        nomorHP: json['nomor_hp'],
        username: json['username'],
        password: json['password']);
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
      'tanggal_masuk': tanggalMasuk
    };
  }
}
