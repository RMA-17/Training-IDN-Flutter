class KontenModel {
  int? id;
  String? judulKonten;
  String? penerbit;
  String? tanggalTerbit;
  String? isiKonten;

  KontenModel(
      {required this.id,
      required this.judulKonten,
      required this.isiKonten,
      required this.tanggalTerbit,
      required this.penerbit});

  factory KontenModel.fromJson(Map<String, dynamic> json) {
    return KontenModel(
        //Harus disesuaikan dengan response yang ada di JSON.
        id: json['id'],
        judulKonten: json['judul_konten'],
        isiKonten: json['isi_konten'],
        tanggalTerbit: json['tanggal_terbit'],
        penerbit: json['penerbit']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'judul_konten': judulKonten,
      'isi_konten': isiKonten,
      'tanggal_terbit': tanggalTerbit,
      'penerbit': penerbit,
    };
  }
}
