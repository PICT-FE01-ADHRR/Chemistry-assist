import 'package:first_app/units/unit3/Quiz/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      margin: EdgeInsets.only(top: 12),
      width: double.infinity,
      decoration: new BoxDecoration(
          // color: Colors.white,
          border: Border.all(color: Color(0xFF3F4768)),
          borderRadius: BorderRadius.circular(50)),
      child: GetBuilder<QuestionController>(
          init: QuestionController(),
          builder: (controller) {
            print(controller.animation.value);
            return Stack(
              children: [
                //Layout builder to give width to the progress bar.
                LayoutBuilder(
                  builder: (context, constraints) => Container(
                    width: constraints.maxWidth * controller.animation.value,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                Positioned.fill(
                  top: 2,
                  left: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "${(controller.animation.value * 20).round()} sec"),
                        //
                        Container(
                          alignment: Alignment.centerRight,
                          child: Image.asset("assets/images/clock.jpg"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
