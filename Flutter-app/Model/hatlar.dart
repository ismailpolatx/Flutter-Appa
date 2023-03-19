class Hatlar {
/*
{
  "HimHatId": 490,
  "Aciklama": "Eğitim Öğretim Süresince Haftaiçi 08:00-09:30 arasında yerleşke içerisini dolaşmaktadır.",
  "HatBitis": "ÜÇYOL METRO",
  "HatBaslangic": "TINAZTEPE",
  "Tarife": "A",
  "CalismaSaatiDonus": "06:00 - 00:00",
  "CalismaSaatiGidis": "06:00 - 00:00",
  "GuzergahAciklama": "DOKUZ ÇEŞMELER - ŞİRİNYER - HALİDE EDİP ADIVAR CAD.",
  "HatId": 490,
  "HatNo": 490,
  "Adi": "TINAZTEPE - ÜÇYOL"
}
*/

  int? HimHatId;
  String? Aciklama;
  String? HatBitis;
  String? HatBaslangic;
  String? Tarife;
  String? CalismaSaatiDonus;
  String? CalismaSaatiGidis;
  String? GuzergahAciklama;
  int? HatId;
  int? HatNo;
  String? Adi;

  Hatlar({
    this.HimHatId,
    this.Aciklama,
    this.HatBitis,
    this.HatBaslangic,
    this.Tarife,
    this.CalismaSaatiDonus,
    this.CalismaSaatiGidis,
    this.GuzergahAciklama,
    this.HatId,
    this.HatNo,
    this.Adi,
  });
  Hatlar.fromJson(Map<String, dynamic> json) {
    HimHatId = json['HimHatId']?.toInt();
    Aciklama = json['Aciklama']?.toString();
    HatBitis = json['HatBitis']?.toString();
    HatBaslangic = json['HatBaslangic']?.toString();
    Tarife = json['Tarife']?.toString();
    CalismaSaatiDonus = json['CalismaSaatiDonus']?.toString();
    CalismaSaatiGidis = json['CalismaSaatiGidis']?.toString();
    GuzergahAciklama = json['GuzergahAciklama']?.toString();
    HatId = json['HatId']?.toInt();
    HatNo = json['HatNo']?.toInt();
    Adi = json['Adi']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['HimHatId'] = HimHatId;
    data['Aciklama'] = Aciklama;
    data['HatBitis'] = HatBitis;
    data['HatBaslangic'] = HatBaslangic;
    data['Tarife'] = Tarife;
    data['CalismaSaatiDonus'] = CalismaSaatiDonus;
    data['CalismaSaatiGidis'] = CalismaSaatiGidis;
    data['GuzergahAciklama'] = GuzergahAciklama;
    data['HatId'] = HatId;
    data['HatNo'] = HatNo;
    data['Adi'] = Adi;
    return data;
  }
}

class  {
/*
{
  "HataMesaj": "",
  "HataVarMi": false,
  "Hatlar": [
    {
      "HimHatId": 490,
      "Aciklama": "Eğitim Öğretim Süresince Haftaiçi 08:00-09:30 arasında yerleşke içerisini dolaşmaktadır.",
      "HatBitis": "ÜÇYOL METRO",
      "HatBaslangic": "TINAZTEPE",
      "Tarife": "A",
      "CalismaSaatiDonus": "06:00 - 00:00",
      "CalismaSaatiGidis": "06:00 - 00:00",
      "GuzergahAciklama": "DOKUZ ÇEŞMELER - ŞİRİNYER - HALİDE EDİP ADIVAR CAD.",
      "HatId": 490,
      "HatNo": 490,
      "Adi": "TINAZTEPE - ÜÇYOL"
    }
  ]
}
*/

String? HataMesaj;
bool? HataVarMi;
List<Hatlar?>? Hatlar;

({
this.HataMesaj,
this.HataVarMi,
this.Hatlar,
});
    .fromJson(Map<String, dynamic> json) {
HataMesaj = json['HataMesaj']?.toString();
HataVarMi = json['HataVarMi'];
if (json['Hatlar'] != null) {
final v = json['Hatlar'];
final arr0 = <Hatlar>[];
v.forEach((v) {
arr0.add(Hatlar.fromJson(v));
});
Hatlar = arr0;
}
}
Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
data['HataMesaj'] = HataMesaj;
data['HataVarMi'] = HataVarMi;
if (Hatlar != null) {
final v = Hatlar;
final arr0 = [];
v!.forEach((v) {
arr0.add(v!.toJson());
});
data['Hatlar'] = arr0;
}
return data;
}
}