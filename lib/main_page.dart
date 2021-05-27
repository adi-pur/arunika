import 'dart:math';

import 'package:arunika/detail_page.dart';
import 'package:arunika/model/hotel.dart';
import 'package:arunika/widget/favorite_button_widget.dart';
import 'package:arunika/widget/navigation_drawer_widget.dart';
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
                  Flexible(
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      margin: EdgeInsets.only(right: 8),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15)),
                      child: TextField(
                        controller: controllerSearch,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            hintText: "search",
                            border: InputBorder.none),
                      ),
                    ),
                  ),
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
                    child: ListView.builder(
                      itemCount: hotelList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final Hotel hotel = hotelList[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(hotel: hotel),
                              ),
                            );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * .56,
                            margin: EdgeInsets.only(right: 9),
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage(hotel.imageAsset),
                                  fit: BoxFit.cover),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    FavoriteButtonWidget(
                                      alignment: Alignment.topRight,
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      hotel.name,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_pin,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          hotel.location,
                                          style: TextStyle(color: Colors.white),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
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
                  Container(
                    height: MediaQuery.of(context).size.height * .1,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage(
                                      hotelList[randomNumber].imageAsset),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  hotelList[randomNumber].name,
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  '${hotelList[randomNumber].location}, ${hotelList[randomNumber].region}',
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
