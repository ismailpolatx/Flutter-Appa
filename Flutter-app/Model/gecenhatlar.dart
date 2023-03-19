class GecenHatlar {
/*
{
  "Tarife": null,
  "HatBaslangic": null,
  "HatBitis": null,
  "Aciklama": null,
  "Adi": "BEYDAĞ-ÖDEMİŞ",
  "GuzergahAciklama": null,
  "HatNo": 796,
  "AramaAdi": null
}
*/

  String? Tarife;
  String? HatBaslangic;
  String? HatBitis;
  String? Aciklama;
  String? Adi;
  String? GuzergahAciklama;
  int? HatNo;
  String? AramaAdi;

  GecenHatlar({
    this.Tarife,
    this.HatBaslangic,
    this.HatBitis,
    this.Aciklama,
    this.Adi,
    this.GuzergahAciklama,
    this.HatNo,
    this.AramaAdi,
  });
  GecenHatlar.fromJson(Map<String, dynamic> json) {
    Tarife = json['Tarife']?.toString();
    HatBaslangic = json['HatBaslangic']?.toString();
    HatBitis = json['HatBitis']?.toString();
    Aciklama = json['Aciklama']?.toString();
    Adi = json['Adi']?.toString();
    GuzergahAciklama = json['GuzergahAciklama']?.toString();
    HatNo = json['HatNo']?.toInt();
    AramaAdi = json['AramaAdi']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['Tarife'] = Tarife;
    data['HatBaslangic'] = HatBaslangic;
    data['HatBitis'] = HatBitis;
    data['Aciklama'] = Aciklama;
    data['Adi'] = Adi;
    data['GuzergahAciklama'] = GuzergahAciklama;
    data['HatNo'] = HatNo;
    data['AramaAdi'] = AramaAdi;
    return data;
  }
}

class  {
/*
{
  "GecenHatlar": [
    {
      "Tarife": null,
      "HatBaslangic": null,
      "HatBitis": null,
      "Aciklama": null,
      "Adi": "BEYDAĞ-ÖDEMİŞ",
      "GuzergahAciklama": null,
      "HatNo": 796,
      "AramaAdi": null
    }
  ],
  "Id": 15472,
  "KoorX": 38.086789124232,
  "Adi": "Beydağ Denizli Yolu",
  "Mesafe": 1348970.3506958,
  "GecenHatNumaralari": null,
  "KoorY": 28.215712531762
}
*/

List<GecenHatlar?>? GecenHatlar;
int? Id;
double? KoorX;
String? Adi;
double? Mesafe;
String? GecenHatNumaralari;
double? KoorY;

({
this.GecenHatlar,
this.Id,
this.KoorX,
this.Adi,
this.Mesafe,
this.GecenHatNumaralari,
this.KoorY,
});
    .fromJson(Map<String, dynamic> json) {
if (json['GecenHatlar'] != null) {
final v = json['GecenHatlar'];
final arr0 = <GecenHatlar>[];
v.forEach((v) {
arr0.add(GecenHatlar?.fromJson(v));
});
GecenHatlar = arr0;
}
Id = json['Id']?.toInt();
KoorX = json['KoorX']?.toDouble();
Adi = json['Adi']?.toString();
Mesafe = json['Mesafe']?.toDouble();
GecenHatNumaralari = json['GecenHatNumaralari']?.toString();
KoorY = json['KoorY']?.toDouble();
}
Map<String, dynamic> toJson() {
final data = <String, dynamic>{};
if (GecenHatlar != null) {
final v = GecenHatlar;
final arr0 = [];
v!.forEach((v) {
arr0.add(v!.toJson());
});
data['GecenHatlar'] = arr0;
}
data['Id'] = Id;
data['KoorX'] = KoorX;
data['Adi'] = Adi;
data['Mesafe'] = Mesafe;
data['GecenHatNumaralari'] = GecenHatNumaralari;
data['KoorY'] = KoorY;
return data;
}
}