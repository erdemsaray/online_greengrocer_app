import 'package:flutter/material.dart';

import '../constants/project_variables.dart';

class MovieCardVerticalAxisWidget extends StatelessWidget {
  const MovieCardVerticalAxisWidget(
      {Key? key,
      required this.title,
      required this.year,
      required this.director,
      required this.point,
      required this.imageLink,
      required this.docID,
})
      : super(key: key);

  final String docID;
  final String year;
  final String director;
  final String imageLink;
  final String title;
  final String point;
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11.0),
          color: Color.fromARGB(255, 16, 15, 15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: 170,
              decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill, image: NetworkImage(imageLink))),
              child: const Padding(
                padding: EdgeInsets.only(right: 8),
              ),
            ),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 180,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 175,
                          child: Text(
                            title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                        ),
                        const Expanded(
                          child: SizedBox(
                            width: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 150,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      director,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "IMDb:",
                                style: TextStyle(
                                    color: ColorItems.colorOrangeYellow, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: 173,
                              height: 170,
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "plot,",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 9,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text("Per kg")
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }}