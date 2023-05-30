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
    Map<String, dynamic> catalog = widget.catalog; // Accéder à la variable catalog via widget.catalog
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: backArrow,
            onPressed: () => {Navigator.pop(context)},
          ),
          title:  Center(child: Text(catalog["title"])),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
      ),
    );
  }
}
