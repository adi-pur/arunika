part of 'widgets.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key key,
    @required this.hotel,
  }) : super(key: key);

  final Hotel hotel;

  @override
  Widget build(BuildContext context) {
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
        width: 280,
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
  }
}
