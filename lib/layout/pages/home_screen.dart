part of 'package:ordo_flutter/config/config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SearchBar(),
              Row(
                children: [
                  IconContainer(
                      backgroundColor: blueCargo, iconPath: 'options.png'),
                  GestureDetector(
                      onTap: () {
                        pushNewScreen(
                          context,
                          screen: const CheckoutScreen(),
                          withNavBar: true, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        );
                      },
                      child: IconContainer(
                          backgroundColor: yellow11, iconPath: 'bag.png')),
                  IconContainer(
                      backgroundColor: red12, iconPath: 'notification.png'),
                ],
              )
            ],
          ),
          //Hero
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  width: double.infinity,
                  height: 170,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.black,
                      image: DecorationImage(
                          image: AssetImage("assets/images/hero1.png"),
                          fit: BoxFit.cover)),
                ),
                //Product
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CardItem(
                      imageProduct: "product1.png",
                      backgroundColor: "92D274".toColor().withOpacity(0.27),
                    ),
                    CardItem(
                      imageProduct: "product2.png",
                      backgroundColor: blueCargo,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CardItem(
                      imageProduct: "product3.png",
                      backgroundColor: "92D274".toColor().withOpacity(0.27),
                    ),
                    CardItem(
                      imageProduct: "product4.png",
                      backgroundColor: "92D274".toColor().withOpacity(0.27),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CardItem(
                      imageProduct: "product5.png",
                      backgroundColor: yellow11,
                    ),
                    CardItem(
                      imageProduct: "product6.png",
                      backgroundColor: "92D274".toColor().withOpacity(0.27),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CardItem(
                      imageProduct: "product7.png",
                      backgroundColor: "92D274".toColor().withOpacity(0.27),
                    ),
                    GestureDetector(
                      onTap: () {
                        pushNewScreen(
                          context,
                          screen: const DetailScreen(),
                          withNavBar: true, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        );
                      },
                      child: CardItem(
                        imageProduct: "product8.png",
                        backgroundColor: "92D274".toColor().withOpacity(0.27),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
