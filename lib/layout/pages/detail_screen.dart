part of 'package:ordo_flutter/config/config.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Text("Produk Detail",
                          style: poppinsW7.copyWith(
                              color: blueCargo, fontSize: 18)),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          pushNewScreen(
                            context,
                            screen: const CheckoutScreen(),
                            withNavBar:
                                true, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation:
                                PageTransitionAnimation.cupertino,
                          );
                        },
                        child: const SizedBox(
                          height: 24,
                          width: 24,
                          child: Image(
                              image: AssetImage('assets/icons/bagIcon.png')),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      const SizedBox(
                        height: 24,
                        width: 24,
                        child: Image(
                            image: AssetImage(
                                'assets/icons/notificationIcon.png')),
                      )
                    ],
                  )
                ],
              ),
            ),
            //End Header
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: Image(
                      image: AssetImage('assets/images/product8.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height / 1,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: red12,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(60)))),
                      Container(
                        margin: const EdgeInsets.only(top: 16),
                        height: 850,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(60))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Tas Gucci",
                                    style:
                                        poppinsW7.copyWith(color: greenTukode),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          height: 30,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: yellow11,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Center(
                                              child: Text("Barang Bekas",
                                                  style: poppinsW5.copyWith(
                                                      fontSize: 12,
                                                      color: Colors.white)))),
                                      const SizedBox(width: 8),
                                      Container(
                                          height: 30,
                                          width: 70,
                                          decoration: BoxDecoration(
                                              color: blueCargo,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Center(
                                              child: Text("Stok 100",
                                                  style: poppinsW5.copyWith(
                                                      fontSize: 12,
                                                      color: Colors.white)))),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Rp 126.000",
                                        style: poppinsW5.copyWith(
                                            color: blueCargo,
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                      Text(
                                        "Rp 100.500",
                                        style: poppinsW7.copyWith(
                                          color: blueCargo,
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                      height: 20,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: blueCartago,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Center(
                                          child: Text("Diskon 10%",
                                              style: poppinsW6.copyWith(
                                                  fontSize: 12,
                                                  color: Colors.white)))),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Divider(
                                color: Colors.black.withOpacity(0.18),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const VendorDesc(
                                  vendorName: "Eiger Store",
                                  vendorImage: "eiger.png",
                                  vendorStar: 5.0,
                                  vendorSoldItem: 200,
                                  vendorDesc:
                                      "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available."),
                              Text("Ulasan dan Penilaian",
                                  style:
                                      poppinsW7.copyWith(color: greenTukode)),
                              const SizedBox(
                                height: 16,
                              ),
                              const ReviewCard(
                                  imagePath:
                                      "https://images.unsplash.com/photo-1544985052-b51c2e3a73ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                  nameUser: "Maude Hall",
                                  timeUpdate: "14 Min",
                                  starReview: 5.0,
                                  reviewDesc:
                                      "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback."),
                              const SizedBox(
                                height: 16,
                              ),
                              const ReviewCard(
                                  imagePath:
                                      "https://images.unsplash.com/photo-1637848910988-0491ee38597a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                                  nameUser: "Ester Howard",
                                  timeUpdate: "14 Min",
                                  starReview: 5.0,
                                  reviewDesc:
                                      "That's a fantastic new app feature. You and your team did an excellent job of incorporating user testing feedback."),
                              const SizedBox(
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
