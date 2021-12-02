part of 'package:ordo_flutter/config/config.dart';

class CheckOutItem extends StatelessWidget {
  final String itemName;
  final String quantityTotal;
  final String priceTotal;
  const CheckOutItem(
      {Key? key,
      required this.itemName,
      required this.quantityTotal,
      required this.priceTotal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          itemName,
          style: poppinsW6.copyWith(fontSize: 14),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            quantityTotal,
            style: poppinsW4,
          ),
          Text(
            priceTotal,
            style: poppinsW4,
          )
        ]),
        const SizedBox(height: 16),
      ],
    );
  }
}
