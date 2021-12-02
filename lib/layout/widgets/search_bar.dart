part of 'package:ordo_flutter/config/config.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 38,
      margin: const EdgeInsets.symmetric(
        vertical: 24,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: "F0F0F0".toColor(),
      ),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            filled: true,
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(14)),
              borderSide: BorderSide(color: Colors.transparent, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(14)),
              borderSide: BorderSide(color: greenTukode, width: 2.0),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 8),
            // hintStyle: poppinsW4.copyWith(
            //     color: "010101".toColor().withOpacity(0.21), fontSize: 12),
            // hintText: "Cari dengan mengetik barang",
            labelText: "Cari dengan mengetik barang",
            labelStyle: poppinsW4.copyWith(
                color: "010101".toColor().withOpacity(0.21), fontSize: 12),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: FaIcon(
                FontAwesomeIcons.search,
                size: 16,
                color: "3AB648".toColor(),
              ),
            )),
      ),
    );
  }
}
