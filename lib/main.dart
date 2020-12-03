import 'package:ecommerce_ui_app/screens/boys.dart';
import 'package:ecommerce_ui_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui_app/my_flutter_app_icons.dart';
import 'package:material_design_icons_flutter/icon_map.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:badges/badges.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ECommerce UI',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<String> assets = [
    'assets/categories/boys.jpg',
    'assets/categories/girls.jpg',
    'assets/categories/kids.jpg',
    'assets/categories/man.jpg',
    'assets/categories/woman.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              MyFlutterApp.align_left_icon_8,
              size: 20,
              color: Styles.mainColor,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Badge(
              padding: EdgeInsets.all(4),
              position: BadgePosition.topEnd(top: 17, end: 3),
              child: Icon(
                MdiIcons.bellOutline,
                color: Styles.mainColor,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Material(
              borderRadius: BorderRadius.circular(500),
              child: InkWell(
                borderRadius: BorderRadius.circular(500),
                splashColor: Colors.black45,
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),
            DrawerHeader(
              child: Container(
                height: 142,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/GettyImages.jpg",
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
//                setState(() {
//                  currentIndex = 3;
//                });
                Navigator.of(context).pop();
              },
              child: Text(
                'Profile',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 45,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Settings',
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'About',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'Log Out',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 45,
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: Center(
                  child: Text(
                    'v1.0.1',
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 20,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
      body: Padding(
        padding: Styles.mainPadding,
        child: ListView(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Styles.mainColor,
                    offset: Offset(0, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: TextField(
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                    color: Styles.mainColor,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    color: Styles.mainLabelsColors,
                    fontSize: 22,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Styles.seconderLabelsColors,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    child: categoryContainer(imagePath: assets[0], categoryName: 'Boys'),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=> BoysCategory()
                      ));
                    },
                  ),
                  GestureDetector(
                    child:categoryContainer(imagePath: assets[1], categoryName: 'Girls'),
                    onTap: (){},
                  ),
                  GestureDetector(
                    child: categoryContainer(imagePath: assets[2], categoryName: 'Kids'),
                    onTap: (){},
                  ),
                  GestureDetector(
                    child: categoryContainer(imagePath: assets[3], categoryName: 'Men'),
                    onTap: (){},
                  ),
                  GestureDetector(
                    child: categoryContainer(imagePath: assets[4], categoryName: 'Women'),
                    onTap: (){},
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Featured',
                  style: TextStyle(
                    color: Styles.mainLabelsColors,
                    fontSize: 22,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Styles.seconderLabelsColors,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: assets
                    .map(
                      (asset) => Container(
                        height: 250,
                        width: 150,
                        child: Padding(
                          padding: EdgeInsets.only(right: 5.0),
                          child: Card(
                            elevation: 0.4,
                            child: Column(
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
                                    child: Image.asset(
                                      asset,
                                      fit: BoxFit.fitWidth,
                                      width: double.infinity,
                                      alignment: Alignment.topCenter,
                                    ),
                                  ),
                                  flex: 3,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("\$27.00"),
                                            Icon(Icons.favorite_border),
                                          ],
                                        ),
                                        Text("Woman T-Shirt", textAlign: TextAlign.left,),
                                      ],
                                    ),
                                  ),
                                  flex: 1,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Selling',
                  style: TextStyle(
                    color: Styles.mainLabelsColors,
                    fontSize: 22,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Styles.seconderLabelsColors,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: assets
                    .map(
                      (asset) => Container(
                    height: 250,
                    width: 150,
                    child: Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: Card(
                        elevation: 0.4,
                        child: Column(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
                                child: Image.asset(
                                  asset,
                                  fit: BoxFit.fitWidth,
                                  width: double.infinity,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              flex: 3,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("\$27.00"),
                                        Icon(Icons.favorite_border),
                                      ],
                                    ),
                                    Text("Woman T-Shirt", textAlign: TextAlign.left,),
                                  ],
                                ),
                              ),
                              flex: 1,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget categoryContainer({String imagePath, String categoryName}){
    return Container(
      height: 100,
      width: 130,
      child: Padding(
        padding: EdgeInsets.only(right: 5),
        child: Card(
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(5)),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.fitWidth,
                    width: double.infinity,
                    alignment: Alignment.topCenter,
                  ),
                ),
                // child: Image.asset(
                //   asset,
                //   fit: BoxFit.fitWidth,
                //   width: double.infinity,
                //   alignment: Alignment.topCenter,
                // ),
                flex: 3,
              ),
              Expanded(
                child: Center(
                  child: Text(categoryName),
                ),
                flex: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
