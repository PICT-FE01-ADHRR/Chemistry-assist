// written by Dinesh
import 'package:flutter/material.dart';
import './Content_JSON/ListViewFlashCards.dart';

class FlashCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF0a1931),
      appBar: AppBar(
        elevation: 20,
        shadowColor: Colors.black,
        title: Text(
          'Flash Cards',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Color(0xFF0a1931),
        // backgroundColor: Colors.red,
      ),     
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFFfdfaf6),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                ),
                ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => FlashCardList(
                    itemIndex: index,
                    itemNum: content[index],
                  ),
                  itemCount: content.length,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class FlashCardList extends StatelessWidget {
  var itemIndex;
  var itemNum;
  FlashCardList({this.itemIndex, this.itemNum});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      // color: Colors.red,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      height: 160 * 3,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: size.width - 40,
            height: 145 * 3,
            child: GestureDetector(
              child: Container(
                width: size.width - 30,
                height: 145 * 3,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Color(0xFF0a1931),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),
                      blurRadius: 3.0,
                      spreadRadius: 0.5,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 140,
            //left: 0,
            child: Container(
              // color: Colors.deepOrangeAccent,
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1.0, color: Colors.white),
                    left: BorderSide(width: 1.0, color: Colors.white),
                    right: BorderSide(width: 1.0, color: Colors.white),
                    bottom: BorderSide(width: 1.0, color: Colors.white),
                  ),
                ),
                height: 100 * 3,
                width: size.width - 100,
                child: Column(
                  children: [
                    GestureDetector(
                      child: Text(
                        itemNum.title,
                        style: TextStyle(fontSize: 23, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
