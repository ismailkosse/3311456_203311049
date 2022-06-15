class Users {
  String? ad;
  String? soyad;
  String? email;
  String? sifre;


  Users({
    String? ad,
    String? soyad,
    String? email,
    String? sifre,
  }){
    this.ad = ad;
    this.soyad = soyad;
    this.email =email;
    this.sifre = sifre;
  }

  Users.fromJson(Map<String, dynamic> json) {
    ad = json['ad'];
    soyad = json['soyad'];
    email = json['email'];
    sifre= json['sifre'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ad'] = ad;
    data['soyad'] = soyad;
    data['email'] = email;
    data['sifre'] = sifre;
    return data;
  }
}