import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CategoriesListPage extends StatefulWidget {
  const CategoriesListPage({Key? key}) : super(key: key);
  @override
  State<CategoriesListPage> createState() => _CategoriesListPageState();
}

class _CategoriesListPageState extends State<CategoriesListPage> {
  List _items = [];
  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/datas/categories.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

  @override
  //fonction qui s'execute quand le widget se monte
  void initState() {
    super.initState();
    readJson();
  }

  Widget build(BuildContext context) {
    const mainBgColor = Color(0xfff9f9f9);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainBgColor,
        toolbarHeight: 30,
        elevation: 0,
        // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
      body: Column(
        children: [
          _items.isNotEmpty
              ? Expanded(
                  child: ListView.builder(
                    itemCount: _items.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 110,
                        color: Colors.blue,
                        child: Card(
                          
                          clipBehavior: Clip.hardEdge,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          key: ValueKey(_items[index]["id"]),
                          margin: const EdgeInsets.all(10),
                          color: Colors.amber.shade100,
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Image.asset(
                                    _items[index]["imageSrc"],
                                    fit: BoxFit.cover,
                                  ))
                            ],
                          ),
                          // child: ListTile(
                          //   contentPadding: EdgeInsets.all(0),
                          //     title: Row(
                          //       mainAxisAlignment:
                          //           MainAxisAlignment.spaceBetween,
                          //       children: [
                          //         Container(
                          //           color: Colors.purple,
                          //           width: MediaQuery.of(context).size.width * 0.4,
                          //           child: Text(_items[index]["name"],
                          //               style: const TextStyle(fontSize: 18)),
                          //         ),
                          //         Container(
                          //           width: MediaQuery.of(context).size.width * 0.5,
                          //             color: Colors.red,
                          //             child: Image.asset(
                          //                 _items[index]["imageSrc"]))
                          //       ],
                          //     )),
                        ),
                      );
                    },
                  ),
                )
              : const Text("nothing")
        ],
      ),
    );
  }
}
