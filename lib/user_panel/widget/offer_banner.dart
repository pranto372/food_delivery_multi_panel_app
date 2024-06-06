import 'package:flutter/material.dart';

class OfferBanner extends StatefulWidget {
  const OfferBanner({super.key});

  @override
  State<OfferBanner> createState() => _OfferBannerState();
}

class _OfferBannerState extends State<OfferBanner> {
  final List<Color> colors = [
    Colors.greenAccent.shade100,
    Colors.amberAccent.shade100
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: 6, bottom: 6),
            child: Container(
                height: 110,
                decoration: BoxDecoration(
                  color: colors[index % colors.length],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Uplifting anytime",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            "Flat 7% off on Beef Items",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.pink),
                            ),
                            child: Text(
                              "Order Now",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.pink,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/images/banner_image.png",
                        width: 120,
                        height: 120,
                      ),
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
