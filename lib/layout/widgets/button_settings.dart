part of 'package:ordo_flutter/config/config.dart';

class ButtonSettings extends StatelessWidget {
  final String title;
  const ButtonSettings({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: double.infinity,
      decoration: BoxDecoration(
          color: blueCargo, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              title,
              style: poppinsW6.copyWith(color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16),
            child: FaIcon(
              FontAwesomeIcons.angleRight,
              color: Colors.white,
              size: 14,
            ),
          ),
        ],
      ),
    );
  }
}
