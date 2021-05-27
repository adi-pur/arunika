import 'package:flutter/material.dart';

class FavoriteButtonWidget extends StatefulWidget {
  final Alignment alignment;

  FavoriteButtonWidget({@required this.alignment});
  @override
  _FavoriteButtonWidgetState createState() => _FavoriteButtonWidgetState();
}

class _FavoriteButtonWidgetState extends State<FavoriteButtonWidget> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      alignment: widget.alignment,
      padding: EdgeInsets.all(0),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
    );
  }
}
