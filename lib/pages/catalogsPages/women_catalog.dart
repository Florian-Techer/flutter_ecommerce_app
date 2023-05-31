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
  final Widget filter = SvgPicture.asset(
    'assets/images/svg/filter.svg',
    // semanticsLabel: 'Retour en arrière',
    width: 15,
    height: 15,
    // fit: BoxFit.scaleDown,
  );
  final Widget display = SvgPicture.asset(
    'assets/images/svg/display.svg',
    // semanticsLabel: 'Retour en arrière',
    width: 25,
    height: 25,
    // fit: BoxFit.scaleDown,
  );
  final Widget sortArrow = SvgPicture.asset(
    'assets/images/svg/arrow-sort.svg',
    // semanticsLabel: 'Retour en arrière',
    width: 20,
    height: 20,
    // fit: BoxFit.scaleDown,
  );
  @override
  Widget build(BuildContext context) {
    const white = Color(0xffffffff);
    const mainBgColor = Color(0xfff9f9f9);
    List _items = widget.catalog['items'];
    List<String> types = List<String>.from(widget.catalog['type']);
    Map<String, dynamic> catalog =
        widget.catalog; // Accéder à la variable catalog via widget.catalog
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        leading: IconButton(
          icon: backArrow,
          onPressed: () => {Navigator.pop(context)},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            color: white,
            child: Column(
              children: [
                Row(children: [
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
                              style:
                                  const TextStyle(fontSize: 14, color: white),
                            )));
                      }),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black.withOpacity(0.1), // Couleur de l'ombre
                        spreadRadius: 0.1, // Étendue de l'ombre
                        blurRadius: 20, // Flou de l'ombre
                        offset: const Offset(
                            0, 15), // Décalage de l'ombre (0 en x, 4 en y)
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [filter, const Text("Filter")],
                      ),
                      Row(
                        children: [sortArrow, const Text("Price")],
                      ),
                      display
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                color: mainBgColor,
                child: ListView.builder(
                    itemCount: _items.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 110,
                        child: Card(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(children: [
                            SizedBox(
                                width: 100,
                                child: Image.asset(
                                  _items[index]["imageSrc"],
                                  fit: BoxFit.cover,
                                )),
                            Container(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _items[index]["type"],
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(_items[index]["marque"],
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: Color.fromRGBO(
                                                  189, 189, 189, 1))),
                                      // Row(children: [
                                        
                                      // ],),
                                      Text('${_items[index]["price"]} \$')
                                    ]))
                          ]),
                        ),
                      );
                    })),
          ),
        ],
      ),
    );
  }
}
