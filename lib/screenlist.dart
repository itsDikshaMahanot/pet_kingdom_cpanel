import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget> [
          MyListView(
            img_about: 'assets/images/bg.jpg',
            img_name: 'Fish',
          ),
           MyListView(
            img_about: 'assets/images/bg.jpg',
            img_name: 'Dog',
          ),
           MyListView(
            img_about: 'assets/images/bg.jpg',
            img_name: 'Plants',
          ),
           MyListView(
            img_about: 'assets/images/bg.jpg',
            img_name: 'Birds',
          ),
        ],
      ),
    );
  }
}



class MyListView extends StatelessWidget {

  final String img_about;
  final String img_name;


  MyListView({this.img_about, this.img_name});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: InkWell(
        onTap: (){},
        child: ListTile(
          title: Image.asset(img_about),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(img_name, style: TextStyle(fontSize: 20),)),
        ),
      ),
      
    );
  }
}