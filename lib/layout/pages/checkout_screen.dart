part of 'package:ordo_flutter/config/config.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            color: blueCargo, shape: BoxShape.circle),
                        child: const Center(
                            child: FaIcon(
                          FontAwesomeIcons.arrowLeft,
                          size: 16,
                          color: Colors.white,
                        )),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text("Checkout",
                        style:
                            poppinsW7.copyWith(color: blueCargo, fontSize: 18))
                  ],
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        height: 130,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  blurRadius: 90.0,
                                  offset: const Offset(0.0, 22.0)),
                            ],
                            color: "FEFEFE".toColor(),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                width: 75,
                                height: 75,
                                margin:
                                    const EdgeInsets.only(left: 16, right: 8),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.15),
                                        blurRadius: 24.0,
                                        offset: const Offset(0.0, 8.0)),
                                  ],
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/product8.png'),
                                      fit: BoxFit.contain),
                                )),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Tas Gucci",
                                        style: interW6,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 16),
                                        child: Container(
                                          height: 20,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              color: blueCartago,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const FaIcon(
                                                  FontAwesomeIcons.minus,
                                                  size: 12,
                                                  color: Colors.white),
                                              Text(
                                                "2",
                                                style: poppinsW4.copyWith(
                                                    color: Colors.white),
                                              ),
                                              const FaIcon(
                                                  FontAwesomeIcons.plus,
                                                  size: 12,
                                                  color: Colors.white),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text("Rp 75.000",
                                          style: poppinsW6.copyWith(
                                              color: blueCargo, fontSize: 18)),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 16),
                                        child: Container(
                                          width: 100,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: blueCargo,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const FaIcon(
                                                  FontAwesomeIcons.pencilAlt,
                                                  size: 12,
                                                  color: Colors.white),
                                              Text("Catatan",
                                                  style: poppinsW4.copyWith(
                                                      color: Colors.white)),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),
                      Text(
                        "Detail Pembayaran",
                        style: poppinsW6.copyWith(fontSize: 18),
                      ),
                      const SizedBox(height: 16),
                      const CheckOutItem(
                          itemName: "Tas Gucci",
                          quantityTotal: "(Qty 1)",
                          priceTotal: "Rp 75.000"),
                      const CheckOutItem(
                          itemName: "Tas Eiger",
                          quantityTotal: "(Qty 1)",
                          priceTotal: "Rp 75.000"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ongkos Kirim",
                            style: poppinsW4,
                          ),
                          Text(
                            "Rp 10.000",
                            style: poppinsW4,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: Colors.black.withOpacity(0.18),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: poppinsW6,
                          ),
                          Text(
                            "Rp 160.000",
                            style: poppinsW6,
                          )
                        ],
                      ),

                      const SizedBox(
                        height: 32,
                      ),
                      const ButtonSettings(title: "Waktu Pengantaran"),
                      const SizedBox(
                        height: 16,
                      ),
                      const ButtonSettings(title: "Alamat Pengiriman"),
                      const SizedBox(
                        height: 32,
                      ),
                      Container(
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Tolong pastikan semua pesanan anda sudah benar dan tidak kurang.",
                            style: poppinsW5.copyWith(color: greenTukode),
                            textAlign: TextAlign.center,
                          ),
                        )),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      //Button
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Bayar Sekarang",
                                style: poppinsW7.copyWith(fontSize: 16)),
                            style: ElevatedButton.styleFrom(
                                primary: blueCartago,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ))),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
