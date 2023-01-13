import 'package:flutter/material.dart';

Widget detailsGrid(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
    child: SizedBox(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Singer Details
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(22)),
              ),
            ),
            //Album Art
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(22)),
              ),
            ),
            //Lyrics
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(22)),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
