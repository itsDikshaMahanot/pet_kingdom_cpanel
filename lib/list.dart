import 'package:flutter/material.dart';

class TagList extends StatelessWidget {
  const TagList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.black,
                boxShadow: <BoxShadow>[
                  BoxShadow(color: Colors.grey, blurRadius: 10)
                ],
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Insert",
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w200,
                      color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.black,
                boxShadow: <BoxShadow>[
                  BoxShadow(color: Colors.grey, blurRadius: 10)
                ],
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Update",
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w200,
                      color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.black,
                boxShadow: <BoxShadow>[
                  BoxShadow(color: Colors.grey, blurRadius: 10)
                ],
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Delete",
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w200,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
