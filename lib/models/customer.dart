class Strains {
  int id;
  String name;
  String type;
  String image;
  String thcContent;
  String history;
  String rate;


  Strains(
    this.id,
    this.name,
    this.type,
    this.image,
    this.thcContent,
    this.history,
    this.rate,
  );

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["id"] = id;
    map["name"] = name;
    map["type"] = type;
    map["image"] = image;
    map["thcContent"] = thcContent;
    map["history"] = history;
    map["rate"] = rate;

    return map;
  }
  Strains.fromMap(Map<String, dynamic> map) {
    id = map["id"];
    name = map["name"];
    type = map["ityped"];
    image = map["image"];
    thcContent = map["thcContent"];
    history = map["history"];
    rate = map["rate"];

  }

  static List<Strains> getChooses2020() {
    return <Strains>[
      Strains(0, "Afghan Kush", "Indica","image","19/21","history","rate"),
      Strains(1, "Bruce Banner", "Sativa","image","22+","history","rate"),
    ];
  }


}
