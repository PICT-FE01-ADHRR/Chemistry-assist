//Written By Dinesh
import 'package:flutter/material.dart';
import 'ListviewItems.dart';
import 'class.dart';
// import '../units/unit1/unit1.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF0a1931),
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.black,
        title: Text(
          'ChemAssist',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Color(0xFF0a1931),
      ),
      body: Column(
        children: [
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
                        'Welcome, ' + Value.getString(),
                        style:
                            TextStyle(color: Color(0xFFfdfaf6), fontSize: 25),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 93,
                  left: 20,
                  child: Container(
                    // color: Colors.black,
                    margin: EdgeInsets.all(8),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Wrap(direction: Axis.horizontal, children: [
                        //Stackoverflow
                        RichText(
                          textAlign: TextAlign.left,
                          softWrap: true,
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text:
                                    "Get the Unitwise study material & quizzes ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17)),
                          ]),
                        ),
                      ]),
                    ),
                  ),
                ),
                //Three dots
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
                Positioned(
                  bottom: 18,
                  right: 35,
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
                  bottom: 13,
                  right: 10,
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
                  bottom: 33,
                  right: 12,
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
          ),
          Expanded(
              child: Stack(children: [
            Container(
              margin: EdgeInsets.only(top: 70),
              decoration: BoxDecoration(
                  color: Color(0xFFf9f3f3),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
            ),
            // MyList(),
            ListView.builder(
              itemBuilder: (context, index) => MyList(
                itemIndex: index,
                itemNum: itemsList[index],
              ),
              itemCount: itemsList.length,
            )
          ]))
        ],
      ),
    );
  }
}

class MyList extends StatelessWidget {
  final int itemIndex;
  final ListdisplayText itemNum;

  MyList({required this.itemIndex, required this.itemNum});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
      // color: Colors.blueAccent,
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: size.width - 40,
            height: 145,
            decoration: BoxDecoration(
                // color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(40)),
            child: GestureDetector(
              onTap: () {
                // print('tapped');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => funcList[itemIndex]));
              },
              child: Container(
                height: 145,
                width: size.width - 30,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      // color: Color(0xFFff7b54),
                      color: Colors.black,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 3.0,
                      spreadRadius: 0.5,
                    ),
                  ],
                  color: Colors.white,
                  gradient: new LinearGradient(
                    colors: [
                      Color(0xFF12c2e9),
                      Color(0xFF21096e),
                      // Color(0xFFf64f59),
                      // Color(0xFF21094e),
                    ],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -25,
            left: 0,
            child: SizedBox(
              height: 136,
              width: size.width - 200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: Text(
                        itemNum.title,
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      onTap: () {
                        // print('tapped');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => funcList[itemIndex]),
                        );
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15, left: 20),
                      child: GestureDetector(
                        child: Text(
                          itemNum.chapter,
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        onTap: () {
                          // print('tapped');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => funcList[itemIndex]),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
