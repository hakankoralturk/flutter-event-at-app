class Event {
  int id;
  String name;
  String slug;
  String content;
  String start;
  String end;
  bool isFree;
  String poster;
  String ticketUrl;
  Format format;
  Category category;
  Venue venue;

  Event(
      {this.id,
      this.name,
      this.slug,
      this.content,
      this.start,
      this.end,
      this.isFree,
      this.poster,
      this.ticketUrl,
      this.format,
      this.category,
      this.venue});

  factory Event.fromMap(Map<String, dynamic> jsonData) {
    return Event(
      id: jsonData["id"],
      name: jsonData["name"],
      slug: jsonData["slug"],
      content: jsonData["content"],
      start: jsonData["start"],
      end: jsonData["end"],
      isFree: jsonData["is_free"],
      poster: jsonData["poster_url"],
      ticketUrl: jsonData["ticket_url"],
      format: Format.fromMap(jsonData["format"]),
      category: Category.fromMap(jsonData["category"]),
      venue: Venue.fromMap(jsonData["venue"]),
    );
  }
}

class Format {
  int id;
  String name;
  String slug;

  Format({this.id, this.name, this.slug});

  factory Format.fromMap(Map<String, dynamic> jsonData) {
    return Format(
      id: jsonData["id"],
      name: jsonData["name"],
      slug: jsonData["slug"],
    );
  }
}

class Category {
  int id;
  String name;
  String slug;

  Category({this.id, this.name, this.slug});

  factory Category.fromMap(Map<String, dynamic> jsonData) {
    return Category(
      id: jsonData["id"],
      name: jsonData["name"],
      slug: jsonData["slug"],
    );
  }
}

class Venue {
  int id;
  String name;
  String slug;
  String about;
  String lat;
  String lng;
  int status;
  String phone;
  City city;
  District district;
  // Neighborhood neighborhood;
  String address;

  Venue({
    this.id,
    this.name,
    this.slug,
    this.about,
    this.lat,
    this.lng,
    this.status,
    this.phone,
    this.city,
    this.district,
    // this.neighborhood,
    this.address,
  });

  factory Venue.fromMap(Map<String, dynamic> jsonData) {
    return Venue(
      id: jsonData["id"],
      name: jsonData["name"],
      slug: jsonData["slug"],
      about: jsonData["about"],
      lat: jsonData["lat"],
      lng: jsonData["lng"],
      status: jsonData["status"],
      phone: jsonData["phone"],
      city: City.fromMap(jsonData["city"]),
      district: District.fromMap(jsonData["district"]),
      // neighborhood: Neighborhood.fromMap(jsonData["neighborhood"]),
      address: jsonData["address"],
      // tags: Tag.fromMap(jsonData["tags"]),
    );
  }
}

class City {
  int id;
  String name;
  String slug;

  City({this.id, this.name, this.slug});

  factory City.fromMap(Map<String, dynamic> jsonData) {
    return City(
      id: jsonData["id"],
      name: jsonData["name"],
      slug: jsonData["slug"],
    );
  }
}

class District {
  int id;
  String name;
  String slug;

  District({this.id, this.name, this.slug});

  factory District.fromMap(Map<String, dynamic> jsonData) {
    return District(
      id: jsonData["id"],
      name: jsonData["name"],
      slug: jsonData["slug"],
    );
  }
}

// class Neighborhood {
//   int id;
//   String name;
//   String slug;

//   Neighborhood({this.id, this.name, this.slug});

//   factory Neighborhood.fromMap(Map<String, dynamic> jsonData) {
//     return Neighborhood(
//       id: jsonData["id"],
//       name: jsonData["name"],
//       slug: jsonData["slug"],
//     );
//   }
// }

class Tag {
  int id;
  String name;
  String slug;

  Tag({this.id, this.name, this.slug});

  factory Tag.fromMap(Map<String, dynamic> jsonData) {
    return Tag(
      id: jsonData["id"],
      name: jsonData["name"],
      slug: jsonData["slug"],
    );
  }
}

final List<City> cities = [
  City(id: 1, name: "Adana", slug: "adana"),
  City(id: 2, name: "Ad??yaman", slug: "adiyaman"),
  City(id: 3, name: "Afyon", slug: "afyon"),
  City(id: 85, name: "Afyonkarahisar", slug: "afyonkarahisar"),
  City(id: 4, name: "A??r??", slug: "agri"),
  City(id: 5, name: "Aksaray", slug: "aksaray"),
  City(id: 6, name: "Amasya", slug: "amasya"),
  City(id: 7, name: "Ankara", slug: "ankara"),
  City(id: 8, name: "Antalya", slug: "antalya"),
  City(id: 9, name: "Ardahan", slug: "ardahan"),
  City(id: 10, name: "Artvin", slug: "artvin"),
  City(id: 11, name: "Ayd??n", slug: "aydin"),
  City(id: 12, name: "Bal??kesir", slug: "balikesir"),
  City(id: 13, name: "Bart??n", slug: "bartin"),
  City(id: 14, name: "Batman", slug: "batman"),
  City(id: 15, name: "Bayburt", slug: "bayburt"),
  City(id: 16, name: "Bilecik", slug: "bilecik"),
  City(id: 17, name: "Bing??l", slug: "bingol"),
  City(id: 18, name: "Bitlis", slug: "bitlis"),
  City(id: 19, name: "Bolu", slug: "bolu"),
  City(id: 20, name: "Burdur", slug: "burdur"),
  City(id: 21, name: "Bursa", slug: "bursa"),
  City(id: 22, name: "??anakkale", slug: "canakkale"),
  City(id: 23, name: "??ank??r??", slug: "cankiri"),
  City(id: 24, name: "??orum", slug: "corum"),
  City(id: 25, name: "Denizli", slug: "denizli"),
  City(id: 26, name: "Diyarbak??r", slug: "diyarbakir"),
  City(id: 27, name: "D??zce", slug: "duzce"),
  City(id: 28, name: "Edirne", slug: "edirne"),
  City(id: 29, name: "Elaz????", slug: "elazig"),
  City(id: 30, name: "Erzincan", slug: "erzincan"),
  City(id: 31, name: "Erzurum", slug: "erzurum"),
  City(id: 32, name: "Eski??ehir", slug: "eskisehir"),
  City(id: 33, name: "Gaziantep", slug: "gaziantep"),
  City(id: 34, name: "Giresun", slug: "giresun"),
  City(id: 35, name: "G??m????hane", slug: "gumushane"),
  City(id: 36, name: "Hakkari", slug: "hakkari"),
  City(id: 37, name: "Hatay", slug: "hatay"),
  City(id: 38, name: "I??d??r", slug: "igdir"),
  City(id: 39, name: "Isparta", slug: "isparta"),
  City(id: 40, name: "??stanbul", slug: "istanbul"),
  City(id: 41, name: "??zmir", slug: "izmir"),
  City(id: 42, name: "Kahramanmara??", slug: "kahramanmaras"),
  City(id: 43, name: "Karab??k", slug: "karabuk"),
  City(id: 44, name: "Karaman", slug: "karaman"),
  City(id: 45, name: "Kars", slug: "kars"),
  City(id: 46, name: "Kastamonu", slug: "kastamonu"),
  City(id: 47, name: "Kayseri", slug: "kayseri"),
  City(id: 51, name: "Kilis", slug: "kilis"),
  City(id: 48, name: "K??r??kkale", slug: "kirikkale"),
  City(id: 49, name: "K??rklareli", slug: "kirklareli"),
  City(id: 50, name: "K??r??ehir", slug: "kirsehir"),
  City(id: 84, name: "KKTC", slug: "kktc"),
  City(id: 52, name: "Kocaeli", slug: "kocaeli"),
  City(id: 53, name: "Konya", slug: "konya"),
  City(id: 54, name: "K??tahya", slug: "kutahya"),
  City(id: 83, name: "Lefko??a", slug: "lefkosa"),
  City(id: 55, name: "Malatya", slug: "malatya"),
  City(id: 56, name: "Manisa", slug: "manisa"),
  City(id: 57, name: "Mardin", slug: "mardin"),
  City(id: 58, name: "Mersin", slug: "mersin"),
  City(id: 59, name: "Mu??la", slug: "mugla"),
  City(id: 60, name: "Mu??", slug: "mus"),
  City(id: 61, name: "Nev??ehir", slug: "nevsehir"),
  City(id: 62, name: "Ni??de", slug: "nigde"),
  City(id: 63, name: "Ordu", slug: "ordu"),
  City(id: 64, name: "Osmaniye", slug: "osmaniye"),
  City(id: 65, name: "Rize", slug: "rize"),
  City(id: 66, name: "Sakarya", slug: "sakarya"),
  City(id: 67, name: "Samsun", slug: "samsun"),
  City(id: 71, name: "??anl??urfa", slug: "sanliurfa"),
  City(id: 68, name: "Siirt", slug: "siirt"),
  City(id: 69, name: "Sinop", slug: "sinop"),
  City(id: 72, name: "????rnak", slug: "sirnak"),
  City(id: 70, name: "Sivas", slug: "sivas"),
  City(id: 73, name: "Tekirda??", slug: "tekirdag"),
  City(id: 74, name: "Tokat", slug: "tokat"),
  City(id: 75, name: "Trabzon", slug: "trabzon"),
  City(id: 76, name: "Tunceli", slug: "tunceli"),
  City(id: 77, name: "U??ak", slug: "usak"),
  City(id: 78, name: "Van", slug: "van"),
  City(id: 79, name: "Yalova", slug: "yalova"),
  City(id: 80, name: "Yozgat", slug: "yozgat"),
  City(id: 81, name: "Zonguldak", slug: "zonguldak")
];

final List<Format> formats = [
  Format(id: 28, name: "At??lye", slug: "atolye"),
  Format(id: 15, name: "??al????tay", slug: "calistay"),
  Format(id: 24, name: "Di??er", slug: "diger"),
  Format(id: 5, name: "E??itim", slug: "egitim"),
  Format(id: 21, name: "Festival", slug: "festival"),
  Format(id: 4, name: "Fuar", slug: "fuar"),
  Format(id: 10, name: "Gezi", slug: "gezi"),
  Format(id: 22, name: "??mza G??n??", slug: "imza-gunu"),
  Format(id: 11, name: "Kamp", slug: "kamp"),
  Format(id: 2, name: "Konferans", slug: "konferans"),
  Format(id: 8, name: "Kongre", slug: "kongre"),
  Format(id: 19, name: "Konser", slug: "konser"),
  Format(id: 9, name: "Panel", slug: "panel"),
  Format(id: 7, name: "Sahne Sanatlar??", slug: "sahne-sanatlari"),
  Format(id: 3, name: "Seminer", slug: "seminer"),
  Format(id: 20, name: "Sempozyum", slug: "sempozyum"),
  Format(id: 1, name: "Sergi", slug: "sergi"),
  Format(id: 14, name: "S??yle??i", slug: "soylesi"),
  Format(id: 27, name: "Toplant??", slug: "toplanti"),
  Format(id: 13, name: "Webiner", slug: "webiner"),
  Format(id: 12, name: "Yar????ma", slug: "yarisma"),
  Format(id: 16, name: "Zirve", slug: "zirve")
];

final List<Category> categories = [
  Category(id: 1423, name: "Alternatif M??zik", slug: "alternatif-muzik"),
  Category(id: 4015, name: "A??????l??k ve Mutfak", slug: "ascilik-ve-mutfak"),
  Category(id: 3797, name: "Bilim Teknoloji", slug: "bilim-teknoloji"),
  Category(id: 456, name: "Bili??im", slug: "bilisim"),
  Category(id: 291, name: "Caz M??zik", slug: "caz-muzik"),
  Category(id: 59, name: "??ocuk Geli??imi", slug: "cocuk-gelisimi"),
  Category(id: 88, name: "??ocuk Tiyatrosu", slug: "cocuk-tiyatrosu"),
  Category(
      id: 3974,
      name: "Dans ve M??zikal G??steriler",
      slug: "dans-ve-muzikal-gosteriler"),
  Category(id: 3820, name: "Di??er", slug: "diger"),
  Category(id: 3805, name: "Dil ve Edebiyat", slug: "dil-ve-edebiyat"),
  Category(id: 3984, name: "D??nya M??zik", slug: "dunya-muzik"),
  Category(id: 3968, name: "E??itim - ????retim", slug: "egitim-ogretim"),
  Category(id: 3799, name: "Enerji ve ??evre", slug: "enerji-ve-cevre"),
  Category(id: 3798, name: "Finans-Ekonomi", slug: "finans-ekonomi"),
  Category(id: 171, name: "Foto??raf????l??k", slug: "fotografcilik"),
  Category(id: 3971, name: "Gayrimenkul & ??n??aat", slug: "gayrimenkul-insaat"),
  Category(id: 182, name: "G??da", slug: "gida"),
  Category(id: 54, name: "Giri??imcilik", slug: "girisimcilik"),
  Category(id: 206, name: "Hayvanc??l??k", slug: "hayvancilik"),
  Category(id: 3218, name: "Hobi & Ya??am Tarz??", slug: "hobi-yasam-tarzi"),
  Category(id: 56, name: "Hukuk", slug: "hukuk"),
  Category(id: 187, name: "??nsan Kaynaklar??", slug: "insan-kaynaklari"),
  Category(id: 354, name: "???? D??nyas??", slug: "is-dunyasi"),
  Category(id: 509, name: "Kariyer", slug: "kariyer"),
  Category(id: 24, name: "Ki??isel Geli??im", slug: "kisisel-gelisim"),
  Category(id: 170, name: "Klasik M??zik", slug: "klasik-muzik"),
  Category(id: 3970, name: "K??lt??r & Din", slug: "kultur-din"),
  Category(id: 3800, name: "Medya ve ??leti??im", slug: "medya-ve-iletisim"),
  Category(id: 5286, name: "??zg??n M??zik", slug: "ozgun-muzik"),
  Category(id: 3975, name: "Parti & Canl?? M??zik", slug: "parti-canli-muzik"),
  Category(id: 364, name: "Pazarlama", slug: "pazarlama"),
  Category(id: 63, name: "Pop M??zik", slug: "pop-muzik"),
  Category(id: 300, name: "Rock M??zik", slug: "rock-muzik"),
  Category(id: 3803, name: "Sa??l??k-T??p", slug: "saglik-tip"),
  Category(id: 75, name: "Sanat", slug: "sanat"),
  Category(id: 3829, name: "Seyahat", slug: "seyahat"),
  Category(id: 3796, name: "Sinema-Film", slug: "sinema-film"),
  Category(id: 3801, name: "Siyaset-Politika", slug: "siyaset-politika"),
  Category(id: 2794, name: "Sosyal Bilimler", slug: "sosyal-bilimler"),
  Category(id: 5471, name: "Soul M??zik", slug: "soul-muzik"),
  Category(id: 1600, name: "Spor", slug: "spor"),
  Category(id: 466, name: "Tarih", slug: "tarih"),
  Category(id: 257, name: "Tar??m", slug: "tarim"),
  Category(
      id: 3972,
      name: "Tedarik Zinciri ve Lojistik",
      slug: "tedarik-zinciri-ve-lojistik"),
  Category(id: 3969, name: "Tekstil & Moda", slug: "tekstil-moda"),
  Category(
      id: 3964, name: "Tiyatro ve G??steriler", slug: "tiyatro-ve-gosteriler"),
  Category(id: 412, name: "Turizm", slug: "turizm"),
  Category(
      id: 3985,
      name: "T??rk Sanat - Halk M??zi??i",
      slug: "turk-sanat-halk-muzigi"),
  Category(
      id: 3966, name: "??retim ve M??hendislik", slug: "uretim-ve-muhendislik"),
  Category(id: 185, name: "Yabanc?? Dil", slug: "yabanci-dil"),
  Category(id: 3967, name: "Y??netim ve Liderlik", slug: "yonetim-ve-liderlik")
];
