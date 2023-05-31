import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WomenCatalogPage extends StatefulWidget {
  const WomenCatalogPage({Key? key, required this.catalog}) : super(key: key);
  final Map<String, dynamic> catalog; // Déclarer la propriété catalog ici
  @override
  State<WomenCatalogPage> createState() => _WomenCatalogPageState();
}

class _WomenCatalogPageState extends State<WomenCatalogPage> {
  final Widget backArrow = SvgPicture.asset(
    'assets/images/svg/left-arrow.svg',
    // semanticsLabel: 'Retour en arrière',
    width: 25,
    height: 25,
    // fit: BoxFit.scaleDown,
  );
  @override
  Widget build(BuildContext context) {
    const white = Color(0xffffffff);
    List<String> types = List<String>.from(widget.catalog['type']);
    Map<String, dynamic> catalog =
        widget.catalog; // Accéder à la variable catalog via widget.catalog
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 230,
        leadingWidth: double.infinity,
        backgroundColor: Colors.amber,
        elevation: 2,
        automaticallyImplyLeading: false,
        title: Container(
          color: Colors.red,
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                IconButton(
                  icon: backArrow,
                  onPressed: () => {Navigator.pop(context)},
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              ]),
              Row(
                children: [
                Container(
                  height: 70,
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    catalog["title"],
                    style: const TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ]),
              Container(
                color: Colors.blue,
                margin: const EdgeInsets.only(bottom: 15),
                width: double.infinity,
                height: 35,
                // margin: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: types.length,
                    itemBuilder: (context, index) {
                      return Container(
                          width: 90,
                          height: 35,
                          margin: index == 0
                              ? const EdgeInsets.only(left: 10, right: 3)
                              : index == types.length - 1
                                  ? const EdgeInsets.only(right: 10, left: 3)
                                  : const EdgeInsets.symmetric(horizontal: 3),
                          padding: const EdgeInsets.only(
                              left: 7, right: 7, top: 2, bottom: 2),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                              child: Text(
                            types[index],
                            style: const TextStyle(fontSize: 14, color: white),
                          )));
                    }),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [Icon(Icons.filter), Text("Filter")],
                    ),
                    Row(
                      children: [Icon(Icons.sort), Text("Price")],
                    ),
                    Icon(Icons.search)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
