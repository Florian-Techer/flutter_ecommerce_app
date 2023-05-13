import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/pages/categoriesPage/categoriesList.dart';
import 'package:flutter_ecommerce_app/pages/homePages/home.dart';
import 'package:flutter_ecommerce_app/pages/homePages/home2.dart';
import 'package:flutter_ecommerce_app/pages/signUp.dart';
import 'package:flutter_svg/svg.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

final Widget homeIcon = SvgPicture.asset(
  'assets/images/svg/home.svg',
  width: 30,
  height: 30,
);
final Widget cartIcon = SvgPicture.asset(
  'assets/images/svg/cart.svg',
  width: 30,
  height: 30,
);
final Widget bagIcon = SvgPicture.asset(
  'assets/images/svg/bag.svg',
  width: 30,
  height: 30,
);
final Widget heartIcon = SvgPicture.asset(
  'assets/images/svg/heart.svg',
  width: 30,
  height: 30,
);
final Widget profileIcon = SvgPicture.asset(
  'assets/images/svg/profile.svg',
  width: 30,
  height: 30,
);
int _currentIndex = 0;

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    const mainBgColor = Color(0xfff9f9f9);
    const white = Color(0xffffffff);
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      elevation: 0,
      color: mainBgColor,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
        child: Container(
          color: white,
          height: 56,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconBottomBar(
                    text: "Home",
                    icon: Icons.home,
                    selectedIcon: Icons.home_outlined,
                    selected: _currentIndex == 0,
                    onPressed: () => {
                          setState((() => _currentIndex = 0)),
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage2()),
                          )
                        }),
                IconBottomBar(
                    text: "shop",
                    icon: Icons.shopping_cart,
                    selectedIcon: Icons.shopping_cart_outlined,
                    selected: _currentIndex == 1,
                    onPressed: () => {
                          setState((() => _currentIndex = 1)),
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CategoriesListPage()),
                          )
                        }),
                IconBottomBar(
                    text: "bag",
                    icon: Icons.shopping_bag,
                    selectedIcon: Icons.shopping_bag_outlined,
                    selected: _currentIndex == 2,
                    onPressed: () => {
                          setState((() => _currentIndex = 2)),
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomePage()),
                          )
                        }),
                IconBottomBar(
                    text: "favorite",
                    icon: Icons.favorite,
                    selectedIcon: Icons.favorite_outline,
                    selected: _currentIndex == 3,
                    onPressed: () => {setState((() => _currentIndex = 3))}),
                IconBottomBar(
                    text: "profile",
                    icon: Icons.person,
                    selectedIcon: Icons.person_outline_outlined,
                    selected: _currentIndex == 4,
                    onPressed: () => {
                          setState((() => _currentIndex = 4)),
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()),
                          )
                        })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selectedIcon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final IconData selectedIcon;
  final bool selected;
  final Function() onPressed;

  final primaryColor = const Color(0xff4338CA);
  final accentColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            selected ? icon : selectedIcon,
            size: 25,
            color: selected ? accentColor : Colors.grey,
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 12,
              height: .1,
              color: selected ? accentColor : Colors.grey),
        )
      ],
    );
  }
}
