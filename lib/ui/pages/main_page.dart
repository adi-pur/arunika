part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var controllerSearch = TextEditingController();
  int randomNumber = Random().nextInt(hotelList.length);
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
                  SubtitleWidget(text: 'Recommended', fontSize: 22),
                  Container(
                    height: MediaQuery.of(context).size.height * .46,
                    child: ListView.builder(
                      itemCount: hotelList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final Hotel hotel = hotelList[index];
                        return CardWidget(hotel: hotel);
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
