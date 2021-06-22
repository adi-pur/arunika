part of 'widgets.dart';

class SubtitleWidget extends StatelessWidget {
  final String text;
  final double fontSize;

  SubtitleWidget({@required this.text, @required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
    );
  }
}
