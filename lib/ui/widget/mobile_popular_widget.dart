part of 'widgets.dart';

class MobilePopularWidget extends StatelessWidget {
  const MobilePopularWidget({
    Key key,
    @required this.randomNumber,
  }) : super(key: key);

  final int randomNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .1,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(hotelList[randomNumber].imageAsset),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.amber,
                        ),
                        Text(
                          '4.9',
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
