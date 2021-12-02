part of 'package:ordo_flutter/config/config.dart';

class CardItem extends StatelessWidget {
  final String imageProduct;
  final Color backgroundColor;
  const CardItem(
      {Key? key, required this.imageProduct, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          width: 180,
          height: 225,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(36),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: colorCard.withOpacity(0.25),
                    blurRadius: 16.0,
                    offset: const Offset(0.0, 0.0)),
              ]),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Container(
                  width: 180 - 50,
                  height: 225 - 75,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                          image: AssetImage('assets/images/' + imageProduct),
                          fit: BoxFit.contain),
                      color: backgroundColor,
                      boxShadow: [
                        BoxShadow(
                            color: colorCard.withOpacity(0.25),
                            blurRadius: 16.0,
                            offset: const Offset(0.0, 0.0)),
                      ]),
                ),
                Container(
                  width: 200 / 1.9,
                  height: 30,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4),
                  decoration: BoxDecoration(
                      color: yellow11,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18),
                          bottomRight: Radius.circular(18))),
                  child: Row(
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.solidStar,
                        size: 10,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "5.0 | 200+ rating",
                        style: poppinsW5.copyWith(
                            fontSize: 10, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Rp 6.000",
                  style: interW5.copyWith(
                      color: blueCargo, decoration: TextDecoration.lineThrough),
                ),
                Container(
                  width: 75,
                  height: 20,
                  decoration: BoxDecoration(
                      color: blueCartago,
                      borderRadius: BorderRadius.circular(18)),
                  child: Center(
                    child: Text(
                      "Diskon 10%",
                      style: poppinsW7.copyWith(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Text(
              "Rp 4500",
              style: interW8.copyWith(color: blueCargo, fontSize: 12),
            ),
            Text(
              "Lorem ipsum",
              style: poppinsW6.copyWith(color: Colors.black, fontSize: 12),
            )
          ],
        ),
      ],
    );
  }
}
