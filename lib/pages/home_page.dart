import 'package:flutter/material.dart';
import 'package:untitled/models/catalog.dart';
import 'package:untitled/widgets/drawer.dart';

import '../widgets/item_widget.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  var name = "Allama Iqbal Khan";

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: const Text(
          "iApp",
          // style: TextStyle(
          //   color: Colors.black,
          // ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: CatalogModel.items[index],
              );
            }),
      ),
      drawer: MyDrawer(),
      // drawer: const Drawer(
      //   backgroundColor: Colors.black,
      // ),
    );
  }
}
