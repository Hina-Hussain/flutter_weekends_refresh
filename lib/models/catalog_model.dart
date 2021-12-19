class CatalogModel{
  static List<ItemModel> items = [
    ItemModel(1, "iPhone 12 Pro", "Apple iPhone 12th generation",
        999, "#33505a",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
  ];
}

class ItemModel{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageUrl;

  ItemModel(this.id, this.name, this.desc, this.price, this.color, this.imageUrl);

  factory ItemModel.fromMap(Map<String,dynamic> map){
    return ItemModel(
        map["id"],
        map["name"],
        map["desc"],
        map["price"],
        map["color"],
        map["image"]
    );
  }
  toMap()=>{
    "id":id,
    "name":name,
    "desc":desc,
    "price":price,
    "color":color,
    "image":imageUrl
  };

}