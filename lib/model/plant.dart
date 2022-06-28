class Plant {
  int id;
  String name;
  int price;
  int initial_price;
  String shortDesc;
  String description;
  String thumb;

  Plant(
      {required this.id,
      required this.name,
      required this.shortDesc,
      required this.price,
      required this.initial_price,
      required this.description,
      required this.thumb});
}

List getPlant() {
  return [
    Plant(
        id: 1,
        name: "Aglonema",
        shortDesc: 'This is A Aglonema Plant',
        price: 25,
        initial_price: 25,
        description:
            "Aglaonema adalah tanaman hias populer dari suku talas-talasan atau Araceae. Genus Aglaonema memiliki sekitar 30 spesies. Mereka berasal dari daerah tropis dan subtropis di Asia dan Nugini. Mereka umumnya dikenal sebagai Chinese evergreens.",
        thumb:
            "https://www.ibadgarden.com/wp-content/uploads/2019/01/tanaman-aglaonema.jpg"),
    Plant(
        id: 2,
        name: "Nemetu Nemesis",
        shortDesc: 'This is A Plant',
        price: 20,
        initial_price: 20,
        description:
            "Aglaonema adalah tanaman hias populer dari suku talas-talasan atau Araceae. Genus Aglaonema memiliki sekitar 30 spesies. Mereka berasal dari daerah tropis dan subtropis di Asia dan Nugini. Mereka umumnya dikenal sebagai Chinese evergreens.",
        thumb:
            "https://m.rri.co.id/__srct/cfb3228334b52d754373c1e819e9a6cc/902124/5610f844c2e6cd4fa0c833970b0a2f0c.jpg"),
    Plant(
        id: 3,
        name: "Talas",
        shortDesc: 'This is A Talas Plant',
        price: 15,
        initial_price: 15,
        description:
            "Aglaonema adalah tanaman hias populer dari suku talas-talasan atau Araceae. Genus Aglaonema memiliki sekitar 30 spesies. Mereka berasal dari daerah tropis dan subtropis di Asia dan Nugini. Mereka umumnya dikenal sebagai Chinese evergreens.",
        thumb:
            "https://asset.kompas.com/crops/muINdLzqxGBlCa7XSj-rAYf1uuI=/24x7:481x311/750x500/data/photo/2020/06/29/5ef98c477b218.jpg"),
    Plant(
        id: 4,
        name: "Keladi Red",
        shortDesc: 'This is A Keladi Red Star Plant',
        price: 10,
        initial_price: 10,
        description:
            "Keladi adalah tanaman hias populer dari suku talas-talasan atau Araceae. Genus Aglaonema memiliki sekitar 30 spesies. Mereka berasal dari daerah tropis dan subtropis di Asia dan Nugini. Mereka umumnya dikenal sebagai Chinese evergreens.",
        thumb:
            "https://bibitbunga.com/wp-content/uploads/2016/04/keladi-red-star.jpg"),
  ];
}
