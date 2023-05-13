import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MenCategoriesPage extends StatefulWidget {
  const MenCategoriesPage({super.key});

  @override
  State<MenCategoriesPage> createState() => _MenCategoriesPageState();
}

class _MenCategoriesPageState extends State<MenCategoriesPage> {
  List _items = [];
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/datas/categories.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["menCategories"];
    });
  }

  @override
  //fonction qui s'execute quand le widget se monte
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    const white = Color(0xffffffff);
    return Column(
      children: [
        _items.isNotEmpty
            ? Expanded(
                child: ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 110,
                      child: Card(
                        clipBehavior: Clip.hardEdge,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        key: ValueKey(_items[index]["id"]),
                        margin: const EdgeInsets.all(10),
                        color: white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Text(_items[index]["name"],
                                  style: const TextStyle(fontSize: 18)),
                            ),
                            SizedBox(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Image.asset(
                                  _items[index]["imageSrc"],
                                  fit: BoxFit.cover,
                                ))
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            : const Text("nothing")
      ],
    );
  }
}
