import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Widget MainImage = Image.asset(
    'assets/images/png/main-home-image.png',
    width: double.infinity,
    fit: BoxFit.fill,
    // semanticsLabel: 'Retour en arrière',
  );

  final Widget itemListImage1 = Image.asset(
    'assets/images/png/item-list-image.png',
    // semanticsLabel: 'Retour en arrière',
    fit: BoxFit.scaleDown,
  );

  final Widget itemListImage2 = Image.asset(
    'assets/images/png/item-list-image2.png',
    // semanticsLabel: 'Retour en arrière',
    fit: BoxFit.scaleDown,
  );

  final Widget favorite = Image.asset(
    'assets/images/png/favorite.png',
    width: 10,
  );

  final Widget star = Image.asset(
    'assets/images/png/star.png',
    width: 12,
  );

  final Widget starFilled = Image.asset(
    'assets/images/png/starFilled.png',
    width: 12,
  );

  Widget build(BuildContext context) {
    const white = Color(0xffffffff);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: 200,
            width: double.infinity,
            color: Colors.amber,
            child: Stack(children: [
              MainImage,
              const Positioned(
                bottom: 10.0,
                left: 10.0,
                child: Text('Street Clothes',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Sale',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    Text('view all', style: TextStyle(fontSize: 12))
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Super summer sale',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(189, 189, 189, 1))),
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: ListView(
                      physics: const ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Stack(clipBehavior: Clip.none, children: [
                                itemListImage1,
                                Positioned(
                                  bottom: -20.0,
                                  right: 0.0,
                                  child: Container(
                                      padding: const EdgeInsets.all(9),
                                      decoration: const BoxDecoration(
                                          color: white, shape: BoxShape.circle),
                                      width: 35,
                                      height: 35,
                                      child: favorite),
                                ),
                                Positioned(
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red,
                                    ),
                                    width: 40,
                                    height: 24,
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text("-20%",
                                            style: TextStyle(
                                                fontSize: 12, color: white))),
                                  ),
                                ),
                              ]),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      star
                                    ],
                                  ),
                                  const Text('Dorothy Perkins',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              189, 189, 189, 1))),
                                  const Text(
                                    'Evening dress',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        "15\$",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1),
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        "12\$",
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ],
                                  )
                                ]),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Stack(clipBehavior: Clip.none, children: [
                                itemListImage2,
                                Positioned(
                                  bottom: -20.0,
                                  right: 0.0,
                                  child: Container(
                                      padding: const EdgeInsets.all(9),
                                      decoration: const BoxDecoration(
                                          color: white, shape: BoxShape.circle),
                                      width: 35,
                                      height: 35,
                                      child: favorite),
                                ),
                                Positioned(
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red,
                                    ),
                                    width: 40,
                                    height: 24,
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text("-20%",
                                            style: TextStyle(
                                                fontSize: 12, color: white))),
                                  ),
                                ),
                              ]),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      star
                                    ],
                                  ),
                                  const Text('Dorothy Perkins',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              189, 189, 189, 1))),
                                  const Text(
                                    'Evening dress',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        "15\$",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1),
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        "12\$",
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ],
                                  )
                                ]),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Stack(clipBehavior: Clip.none, children: [
                                itemListImage1,
                                Positioned(
                                  bottom: -20.0,
                                  right: 0.0,
                                  child: Container(
                                      padding: const EdgeInsets.all(9),
                                      decoration: const BoxDecoration(
                                          color: white, shape: BoxShape.circle),
                                      width: 35,
                                      height: 35,
                                      child: favorite),
                                ),
                                Positioned(
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red,
                                    ),
                                    width: 40,
                                    height: 24,
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text("-20%",
                                            style: TextStyle(
                                                fontSize: 12, color: white))),
                                  ),
                                ),
                              ]),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      star
                                    ],
                                  ),
                                  const Text('Dorothy Perkins',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              189, 189, 189, 1))),
                                  const Text(
                                    'Evening dress',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        "15\$",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1),
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        "12\$",
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ],
                                  )
                                ]),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Stack(clipBehavior: Clip.none, children: [
                                itemListImage2,
                                Positioned(
                                  bottom: -20.0,
                                  right: 0.0,
                                  child: Container(
                                      padding: const EdgeInsets.all(9),
                                      decoration: const BoxDecoration(
                                          color: white, shape: BoxShape.circle),
                                      width: 35,
                                      height: 35,
                                      child: favorite),
                                ),
                                Positioned(
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red,
                                    ),
                                    width: 40,
                                    height: 24,
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text("-15%",
                                            style: TextStyle(
                                                fontSize: 12, color: white))),
                                  ),
                                ),
                              ]),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      star
                                    ],
                                  ),
                                  const Text('Dorothy Perkins',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              189, 189, 189, 1))),
                                  const Text(
                                    'Evening dress',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        "15\$",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1),
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        "12\$",
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ],
                                  )
                                ]),
                          ],
                        ),
                      ]),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('New',
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold)),
                    Text('view all', style: TextStyle(fontSize: 12))
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('You\'ve never seen it before',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(189, 189, 189, 1))),
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: ListView(
                      physics: const ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Stack(clipBehavior: Clip.none, children: [
                                itemListImage1,
                                Positioned(
                                  bottom: -20.0,
                                  right: 0.0,
                                  child: Container(
                                      padding: const EdgeInsets.all(9),
                                      decoration: const BoxDecoration(
                                          color: white, shape: BoxShape.circle),
                                      width: 35,
                                      height: 35,
                                      child: favorite),
                                ),
                                Positioned(
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red,
                                    ),
                                    width: 40,
                                    height: 24,
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text("-20%",
                                            style: TextStyle(
                                                fontSize: 12, color: white))),
                                  ),
                                ),
                              ]),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      star
                                    ],
                                  ),
                                  const Text('Dorothy Perkins',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              189, 189, 189, 1))),
                                  const Text(
                                    'Evening dress',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        "15\$",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1),
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        "12\$",
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ],
                                  )
                                ]),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Stack(clipBehavior: Clip.none, children: [
                                itemListImage2,
                                Positioned(
                                  bottom: -20.0,
                                  right: 0.0,
                                  child: Container(
                                      padding: const EdgeInsets.all(9),
                                      decoration: const BoxDecoration(
                                          color: white, shape: BoxShape.circle),
                                      width: 35,
                                      height: 35,
                                      child: favorite),
                                ),
                                Positioned(
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red,
                                    ),
                                    width: 40,
                                    height: 24,
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text("-20%",
                                            style: TextStyle(
                                                fontSize: 12, color: white))),
                                  ),
                                ),
                              ]),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      star
                                    ],
                                  ),
                                  const Text('Dorothy Perkins',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              189, 189, 189, 1))),
                                  const Text(
                                    'Evening dress',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        "15\$",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1),
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        "12\$",
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ],
                                  )
                                ]),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Stack(clipBehavior: Clip.none, children: [
                                itemListImage1,
                                Positioned(
                                  bottom: -20.0,
                                  right: 0.0,
                                  child: Container(
                                      padding: const EdgeInsets.all(9),
                                      decoration: const BoxDecoration(
                                          color: white, shape: BoxShape.circle),
                                      width: 35,
                                      height: 35,
                                      child: favorite),
                                ),
                                Positioned(
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red,
                                    ),
                                    width: 40,
                                    height: 24,
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text("-20%",
                                            style: TextStyle(
                                                fontSize: 12, color: white))),
                                  ),
                                ),
                              ]),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      star
                                    ],
                                  ),
                                  const Text('Dorothy Perkins',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              189, 189, 189, 1))),
                                  const Text(
                                    'Evening dress',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        "15\$",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1),
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        "12\$",
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ],
                                  )
                                ]),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Stack(clipBehavior: Clip.none, children: [
                                itemListImage2,
                                Positioned(
                                  bottom: -20.0,
                                  right: 0.0,
                                  child: Container(
                                      padding: const EdgeInsets.all(9),
                                      decoration: const BoxDecoration(
                                          color: white, shape: BoxShape.circle),
                                      width: 35,
                                      height: 35,
                                      child: favorite),
                                ),
                                Positioned(
                                  top: 10.0,
                                  left: 10.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.red,
                                    ),
                                    width: 40,
                                    height: 24,
                                    child: const Align(
                                        alignment: Alignment.center,
                                        child: Text("-15%",
                                            style: TextStyle(
                                                fontSize: 12, color: white))),
                                  ),
                                ),
                              ]),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      starFilled,
                                      const SizedBox(width: 3),
                                      star
                                    ],
                                  ),
                                  const Text('Dorothy Perkins',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(
                                              189, 189, 189, 1))),
                                  const Text(
                                    'Evening dress',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        "15\$",
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                189, 189, 189, 1),
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                      SizedBox(width: 7),
                                      Text(
                                        "12\$",
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ],
                                  )
                                ]),
                          ],
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
