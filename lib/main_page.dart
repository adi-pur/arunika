import 'dart:math';
import 'package:arunika/model/hotel.dart';
import 'package:arunika/widget/mobile_listview_widget.dart';
import 'package:arunika/widget/mobile_popular_widget.dart';
import 'package:arunika/widget/navigation_drawer_widget.dart';
import 'package:arunika/widget/search_file_widget.dart';
import 'package:arunika/widget/subtitle_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var controllerSearch = TextEditingController();
  int randomNumber = Random().nextInt(hotelList.length + 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: CircleAvatar(
                backgroundImage: AssetImage('images/profile.jpeg'),
              ),
              onPressed: null)
        ],
        leading: Builder(
            builder: (context) => IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () => Scaffold.of(context).openDrawer())),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  SearchFieldWidget(controllerSearch: controllerSearch),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    child: IconButton(
                        icon: Icon(Icons.sort),
                        color: Colors.white,
                        onPressed: () {}),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubtitleWidget(text: 'Discover', fontSize: 20),
                  Container(
                    height: MediaQuery.of(context).size.height * .46,
                    child: MobileListviewWidget(),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SubtitleWidget(text: 'Popular', fontSize: 20),
                  MobilePopularWidget(randomNumber: randomNumber),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
