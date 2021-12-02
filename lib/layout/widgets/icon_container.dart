part of 'package:ordo_flutter/config/config.dart';

class IconContainer extends StatelessWidget {
  final Color backgroundColor;
  final String iconPath;
  const IconContainer(
      {Key? key, required this.backgroundColor, required this.iconPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: backgroundColor),
      child: Center(
          child: Image(
              width: 15,
              height: 15,
              image: AssetImage('assets/icons/' + iconPath))),
    );
  }
}
