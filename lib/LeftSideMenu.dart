import 'package:flutter/material.dart';

class DrawerClass extends StatefulWidget {
  const DrawerClass({
    Key? key,
  }) : super(key: key);

  @override
  _DrawerClassState createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
  @override
  Widget build(BuildContext context) {
    return DrawwerWidget();
  }
}

class DrawwerWidget extends StatelessWidget {
  const DrawwerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xffFBEAEB),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 27,
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.white70,
                        backgroundImage: AssetImage('images/Cupertinosquare.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Material Drawer',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, top: 20.0),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          tooltip: 'Back Button',
                          icon: Icon(Icons.arrow_forward_ios_sharp),
                          alignment: Alignment.topRight,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              color: Color(0xff8AAAE5),
            ),
            Divider(
              color: Colors.white,
            ),
            TextButton(
              onPressed: () {

              },
              child: Text(
                'Profile',
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () {

              },
              child: Text(
                'About',
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () {

              },
              child: Text(
                'Settings',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Spacer(),
            TextButton(
              onPressed: () {
                  Navigator.pop(context);
              },
              child: Text(

                'Log Out',
                style: TextStyle(fontSize: 20, )
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
