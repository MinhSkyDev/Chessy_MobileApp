// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import "package:chessy/models/puzzleInfo.dart";
import "package:flutter/material.dart";

class PuzzleCard extends StatelessWidget {
  final PuzzleInfo currentInfo;
  final String mode;

  const PuzzleCard(this.currentInfo, this.mode);

  @override
  Widget build(BuildContext context) {
    //Cái này dùng để tính toán kích thước để responsive
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    const double CARD_HEIGHT_RATIO = 0.1681;
    const double CARD_WIDTH_RATIO = 0.91;

    const double SIZED_BOXED_HEIGHT = CARD_HEIGHT_RATIO * 0.25;

    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: const EdgeInsets.all(15),
          width: screen_width *
              CARD_WIDTH_RATIO, //Logic tính toán kích thước ở đây
          height: screen_height * CARD_HEIGHT_RATIO,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 129, 31, 134),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Row(children: [
            Image.asset(
              "image/puzzle_icon.png", // this one could go random
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: SIZED_BOXED_HEIGHT,
                    ),
                    Text(
                      "Puzzle Name: ${currentInfo.PuzzleId}",
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    Text(
                      "Poppularity: ${currentInfo.Popularity}",
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    Text(
                      "Difficulty: $mode",
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    Text(
                      "Rating: ${currentInfo.rating}",
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Colors.white),
                    )
                  ],
                ))
          ]),
        ));
  }
}
