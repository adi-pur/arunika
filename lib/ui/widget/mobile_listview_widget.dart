part of 'widgets.dart';

class MobileListviewWidget extends StatelessWidget {
  const MobileListviewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                  image: AssetImage(hotel.imageAsset), fit: BoxFit.cover),
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
    );
  }
}
