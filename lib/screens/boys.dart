import 'package:badges/badges.dart';
import 'package:ecommerce_ui_app/styles.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BoysCategory extends StatelessWidget {
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
              Icons.arrow_back,
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
      body: Padding(
        padding: Styles.mainPadding,
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Boys',
                  style: TextStyle(
                    color: Styles.mainLabelsColors,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
