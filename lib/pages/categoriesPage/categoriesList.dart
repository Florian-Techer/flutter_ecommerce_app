import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/navigation.dart';
import 'package:flutter_svg/svg.dart';
import './tabs/menCategories.dart';
import './tabs/womenCategories.dart';
import './tabs/kidsCategories.dart';

class CategoriesListPage extends StatefulWidget {
  const CategoriesListPage({Key? key}) : super(key: key);
  @override
  State<CategoriesListPage> createState() => _CategoriesListPageState();
}

class _CategoriesListPageState extends State<CategoriesListPage> {
  final Widget backArrow = SvgPicture.asset(
    'assets/images/svg/left-arrow.svg',
    // semanticsLabel: 'Retour en arrière',
    width: 25,
    height: 25,
    // fit: BoxFit.scaleDown,
  );

  @override
  Widget build(BuildContext context) {
    const mainBgColor = Color(0xfff9f9f9);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: backArrow,
            onPressed: () {},
          ),
          title: const Center(child: Text("Categories")),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
          // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
        body: Container(
          color: mainBgColor,
          child: const Column(
            children: [
              TabBar(indicatorColor: Colors.red, tabs: [
                Tab(child: Text("Women")),
                Tab(child: Text("Men")),
                Tab(child: Text("Kids"))
              ]),
              Expanded(
                child: TabBarView(children: [
                  WomenCategoriesPage(),
                  MenCategoriesPage(),
                  KidsCategoriesPage()
                ]),
              )
            ],
          ),
        ),
        bottomNavigationBar: const NavigationPage(),
      ),
    );
  }
}
