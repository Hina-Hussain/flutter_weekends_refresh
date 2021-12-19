import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_30_days_challenge/models/catalog_model.dart';
import 'package:flutter_30_days_challenge/widgets/item_widget.dart';
import 'package:flutter_30_days_challenge/widgets/my_drawer.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    loadData();
    super.initState();
  }
  void loadData() async{
    final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    final productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map((item) => ItemModel.fromMap(item)).toList();

    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Catalog App'),),
      body: GridView.builder(
        itemCount: CatalogModel.items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16
          ),
          itemBuilder: (context,index){
            final item = CatalogModel.items[index];
            return Card(
              elevation: 10,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: GridPaper(
                child: Image.network(item.imageUrl),
                color: Colors.deepOrange,
                divisions: 2,
                interval: 76,
              )
              /*GridTile(
                  header: Text(item.name),
                  child: Image.network(item.imageUrl),
                  footer: Text("\$${item.price}"),
              )*/,
            );
          })
      /*ListView.builder(
        itemCount: CatalogModel.items.length,
          itemBuilder: (context,index){
           return ItemWidget(item: CatalogModel.items[index],);
          })*/
      ,
      drawer: MyDrawer(),
    );
  }
}
