part of 'package:ordo_flutter/config/config.dart';

class VendorDesc extends StatelessWidget {
  final String vendorName;
  final String vendorImage;
  final double vendorStar;
  final int vendorSoldItem;
  final String vendorDesc;
  const VendorDesc(
      {Key? key,
      required this.vendorName,
      required this.vendorImage,
      required this.vendorStar,
      required this.vendorSoldItem,
      required this.vendorDesc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Vendor",
          style: poppinsW6.copyWith(
            color: greenTukode,
          )),
      const SizedBox(
        height: 8,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/' + vendorImage),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                vendorName,
                style: poppinsW7,
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.solidStar,
                size: 16,
                color: blueCargo,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(vendorStar.toString(),
                  style: poppinsW5.copyWith(
                    color: blueCargo,
                  )),
              Text(" | " + vendorSoldItem.toString() + " Terjual",
                  style: poppinsW4.copyWith(
                    color: blueCargo,
                  )),
            ],
          )
        ],
      ),
      const SizedBox(
        height: 16,
      ),
      Text("Deskripsi", style: poppinsW6.copyWith(color: greenTukode)),
      const SizedBox(
        height: 16,
      ),
      Text(
        vendorDesc,
        style: poppinsW4.copyWith(color: greenTukode),
        textAlign: TextAlign.justify,
      ),
      const SizedBox(
        height: 16,
      ),
    ]);
  }
}
