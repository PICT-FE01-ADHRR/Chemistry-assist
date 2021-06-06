import 'package:flutter/material.dart';

class UiOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(children: [
      Container(
        height: size.height * .24,
        width: double.infinity,
        // color: Colors.grey,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Positioned(
              top: 38,
              left: 20,
              child: Container(
                // color: Colors.black,
                margin: EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Welcome User !!',
                    style: TextStyle(color: Color(0xFFfdfaf6), fontSize: 25),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 18,
              left: 35,
              child: Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 13,
              left: 10,
              child: Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 33,
              left: 12,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
