part of 'pages.dart';

class DetailPage extends StatefulWidget {
  final Hotel hotel;

  DetailPage({@required this.hotel});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var _valueDropDown;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.hotel.imageAsset),
                  fit: BoxFit.cover),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(0),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        FavoriteButtonWidget(alignment: Alignment.centerRight)
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(
                      widget.hotel.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          letterSpacing: 1.5),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '${widget.hotel.location}, ${widget.hotel.region}',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(5)),
                      child: DropdownButton(
                        elevation: 0,
                        dropdownColor: Color.fromARGB(150, 0, 0, 0),
                        hint: Text(
                          'Type Room',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        iconEnabledColor: Colors.white,
                        icon: Icon(Icons.arrow_drop_down_rounded),
                        value: _valueDropDown,
                        onChanged: (value) {
                          setState(() {
                            _valueDropDown = value;
                          });
                        },
                        items: widget.hotel.typeRoom.map(
                          (typeRoom) {
                            return DropdownMenuItem(
                              value: typeRoom,
                              child: Text(
                                typeRoom,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'price',
                          style:
                              TextStyle(color: Colors.grey[100], fontSize: 15),
                        ),
                        Text(
                          _valueDropDown != null
                              ? NumberFormat.currency(
                                      locale: 'id',
                                      decimalDigits: 0,
                                      symbol: 'Rp. ')
                                  .format(widget.hotel.price[_valueDropDown])
                              : 'Rp. -',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: SingleChildScrollView(
                      child: Container(
                        child: Text(
                          widget.hotel.description,
                          textAlign: TextAlign.justify,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: widget.hotel.imageUrl.map((url) {
                          return Padding(
                            padding: EdgeInsets.all(4),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(7),
                              child: Image.network(url),
                            ),
                          );
                        }).toList()),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
