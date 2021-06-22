part of 'widgets.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    Key key,
    @required this.controllerSearch,
  }) : super(key: key);

  final TextEditingController controllerSearch;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        alignment: Alignment.center,
        height: 50,
        margin: EdgeInsets.only(right: 8),
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.grey[300], borderRadius: BorderRadius.circular(15)),
        child: TextField(
          controller: controllerSearch,
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
                size: 18,
              ),
              hintText: "search",
              border: InputBorder.none),
        ),
      ),
    );
  }
}
