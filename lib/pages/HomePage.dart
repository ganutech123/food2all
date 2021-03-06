import 'package:flutter/material.dart';
import 'package:food2all/widgets/BestFoodWidget.dart';
import 'package:food2all/widgets/BottomNavBarWidget.dart';
import 'package:food2all/widgets/SearchWidget.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        title: Text(
          "Order your favourite food ?",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Color(0xFF3a3737),
              ),
              onPressed: () {
              }
                )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
            BestFoodWidget()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),

    );
  }
}
