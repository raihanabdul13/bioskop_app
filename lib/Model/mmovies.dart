class Mmovies {
  int id;
  String nama;
  String sutradara;
  String produksi;
  String sinopsis;
  String file_name;
  int status;


  Mmovies(this.id, this.nama, this.sutradara, this.produksi, this.sinopsis, this.file_name, this.status);

  Mmovies.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        nama = json['nama'],
        sutradara = json['sutradara'],
        produksi = json['produksi'],
        sinopsis = json['sinopsis'],
        file_name = json['file_name'],
        status = json['status'];

}