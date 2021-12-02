class BeritaModel {
  int? id;
  String? judulBerita;
  String? penerbit;
  String? tanggalTerbit;
  String? isiBerita;

  BeritaModel(
      {required this.id,
      required this.judulBerita,
      required this.isiBerita,
      required this.tanggalTerbit,
      required this.penerbit});

  factory BeritaModel.fromJson(Map<String, dynamic> json) {
    return BeritaModel(
        //Harus disesuaikan dengan response yang ada di JSON.
        id: json['id'],
        judulBerita: json['judul_berita'],
        isiBerita: json['isi_berita'],
        tanggalTerbit: json['tanggal_terbit'],
        penerbit: json['penerbit']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'judul_berita': judulBerita,
      'isi_berita': isiBerita,
      'tanggal_terbit': tanggalTerbit,
      'penerbit': penerbit,
    };
  }
}
