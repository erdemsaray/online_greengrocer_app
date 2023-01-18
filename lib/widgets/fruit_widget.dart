import 'package:flutter/material.dart';

import '../constants/project_variables.dart';

class FruitWidget extends StatelessWidget {
  const FruitWidget({Key? key, required this.name, required this.point, required this.price, required this.imageLink})
      : super(key: key);

  final String name;
  final String point;
  final String price;
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.vertical(top: Radius.circular(70), bottom: Radius.circular(20))),
      width: 150,
      child: Column(
        children: [
          Container(
              height: 95,
              width: 200,
              decoration: BoxDecoration(
                  color: ColorItems.colorFruitBackground,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(70),
                  )),
              child: Image.network(imageLink)),
          SizedBox(
            height: 120,
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
                      const Expanded(
                        child: SizedBox(
                          width: 100,
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: ColorItems.colorIconYellow,
                      ),
                      Text(point, style: TextStyle(color: ColorItems.colorFruitYellowText))
                    ],
                  ),
                  Text(name, style: TextStyle(color: ColorItems.colorFruitYellowText)),
                  Text("$price Euro/per kg", style: TextStyle(color: ColorItems.colorIconYellow))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
