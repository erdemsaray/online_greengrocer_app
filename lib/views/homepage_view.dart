import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants/project_variables.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: ColorItems.colorDarkGrey,
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const OfferWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Text(
                          "Recommended Fruits",
                          style: TextStyle(color: ColorItems.colorTextGrey, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const Expanded(
                          child: SizedBox(
                            width: 100,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                "View All",
                                style: TextStyle(color: ColorItems.colorOrangeYellow),
                              ),
                              Icon(Icons.arrow_forward_ios, size: 20, color: ColorItems.colorOrangeYellow)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: heightSize * 0.3,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.vertical(top: Radius.circular(70), bottom: Radius.circular(20))),
                            height: heightSize * 0.2,
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                    height: heightSize * 0.13,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        color: ColorItems.colorFruitBackground,
                                        borderRadius: const BorderRadius.vertical(
                                          top: Radius.circular(70),
                                        )),
                                    child: Image.asset("assets/strawberry.png")),
                                SizedBox(
                                  height: heightSize * 0.15,
                                  child: Padding(
                                    padding: const EdgeInsets.all(18),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "FRUIT",
                                              style: TextStyle(color: ColorItems.colorFruitYellowText),
                                            ),
                                            Expanded(
                                              child: SizedBox(
                                                width: 100,
                                              ),
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: ColorItems.colorIconYellow,
                                            ),
                                            Text("5.0", style: TextStyle(color: ColorItems.colorFruitYellowText))
                                          ],
                                        ),
                                        Text("PINEAPPLE", style: TextStyle(color: ColorItems.colorFruitYellowText)),
                                        Text("16 Euro/per kg", style: TextStyle(color: ColorItems.colorIconYellow))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class OfferWidget extends StatelessWidget {
  const OfferWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      decoration: BoxDecoration(
          color: ColorItems.colorSoftGrey,
          borderRadius: BorderRadius.circular(30),
          image:
              const DecorationImage(alignment: FractionalOffset(1.0, 1), image: AssetImage("assets/offerimage.png"))),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "OFFER",
                style: TextStyle(fontSize: 20, color: ColorItems.colorOrangeYellow),
              ),
              const Text(
                "Discount up to 40% Off",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              SizedBox(
                width: 210,
                child: Text(
                  "In honor of World Health Day We’d like to give you this amazing offers.",
                  style: TextStyle(color: ColorItems.colorTextGrey),
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(ColorItems.colorOrangeYellow)),
                  onPressed: () {},
                  child: const Text("View Offers"))
            ],
          ),
        ),
      ),
    );
  }
}
