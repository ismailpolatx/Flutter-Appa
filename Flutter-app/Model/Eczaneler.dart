class Eczaneler {
/*
{
  "Tarih": "2023-03-19T08:00:00",
  "LokasyonY": "27.118100",
  "LokasyonX": "38.409500",
  "BolgeAciklama": "24:00DEN SONRA- ÇAMDİBİ",
  "Adi": "ECZANE EVREN ECZANESİ",
  "Telefon": "02324691762",
  "Adres": "SERİNTEPE MH. 4321 SK. NO:2/C",
  "BolgeId": 4,
  "Bolge": "ALTINDAĞ",
  "UzaklikMetre": null,
  "EczaneId": -1,
  "IlceId": 0
}
*/

  String? Tarih;
  String? LokasyonY;
  String? LokasyonX;
  String? BolgeAciklama;
  String? Adi;
  String? Telefon;
  String? Adres;
  int? BolgeId;
  String? Bolge;
  String? UzaklikMetre;
  int? EczaneId;
  int? IlceId;

  Eczaneler({
    this.Tarih,
    this.LokasyonY,
    this.LokasyonX,
    this.BolgeAciklama,
    this.Adi,
    this.Telefon,
    this.Adres,
    this.BolgeId,
    this.Bolge,
    this.UzaklikMetre,
    this.EczaneId,
    this.IlceId,
  });
  Eczaneler.fromJson(Map<String, dynamic> json) {
    Tarih = json['Tarih']?.toString();
    LokasyonY = json['LokasyonY']?.toString();
    LokasyonX = json['LokasyonX']?.toString();
    BolgeAciklama = json['BolgeAciklama']?.toString();
    Adi = json['Adi']?.toString();
    Telefon = json['Telefon']?.toString();
    Adres = json['Adres']?.toString();
    BolgeId = json['BolgeId']?.toInt();
    Bolge = json['Bolge']?.toString();
    UzaklikMetre = json['UzaklikMetre']?.toString();
    EczaneId = json['EczaneId']?.toInt();
    IlceId = json['IlceId']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['Tarih'] = Tarih;
    data['LokasyonY'] = LokasyonY;
    data['LokasyonX'] = LokasyonX;
    data['BolgeAciklama'] = BolgeAciklama;
    data['Adi'] = Adi;
    data['Telefon'] = Telefon;
    data['Adres'] = Adres;
    data['BolgeId'] = BolgeId;
    data['Bolge'] = Bolge;
    data['UzaklikMetre'] = UzaklikMetre;
    data['EczaneId'] = EczaneId;
    data['IlceId'] = IlceId;
    return data;
  }
}