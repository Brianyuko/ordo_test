part of 'package:ordo_flutter/config/config.dart';

class ReviewCard extends StatelessWidget {
  final String imagePath;
  final String nameUser;
  final String timeUpdate;
  final double starReview;
  final String reviewDesc;
  const ReviewCard(
      {Key? key,
      required this.imagePath,
      required this.nameUser,
      required this.timeUpdate,
      required this.starReview,
      required this.reviewDesc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.10),
            blurRadius: 16.0,
            offset: const Offset(0.0, 4.0)),
      ], color: Colors.white, borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(imagePath),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle)),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          nameUser,
                          style: interW8.copyWith(fontSize: 16),
                        ),
                        Text(timeUpdate,
                            style: interW5.copyWith(color: "B4BBC6".toColor())),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.solidStar,
                        size: 14, color: "FA4A0C".toColor()),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      starReview.toString(),
                      style: poppinsW6,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(reviewDesc, style: interW4.copyWith(fontSize: 12))
          ],
        ),
      ),
    );
  }
}
