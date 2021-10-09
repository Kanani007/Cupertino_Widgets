import 'dart:ui';
import 'package:cupertinowidgets/LeftSideMenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Color(0xff292826),
      navigationBar: CupertinoNavigationBar(
          brightness: Brightness.light,
          backgroundColor: Color(0xffF9D342),
          padding: EdgeInsetsDirectional.all(10.0),
          automaticallyImplyMiddle: false,
          border: const Border(
            bottom: BorderSide(color: Colors.white, width: 2.0),
          ),
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DrawerClass(),
                    ));
              },
              child: Icon(
                CupertinoIcons.rectangle_grid_1x2_fill,
                size: 25.0,
              )),
          automaticallyImplyLeading: false,
          transitionBetweenRoutes: true,
          trailing: Icon(CupertinoIcons.forward),
          middle: Text('CUPERTINO widgets')),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),

            SizedBox(
              height: 20.0,
            ),
            CupertinoButton.filled(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              pressedOpacity: 0.4,
              padding: const EdgeInsets.all(20.0),
              child: const Text('Alert Dialog'),
              onPressed: () {
                showCupertinoDialog<void>(
                  context: context,
                  builder: (BuildContext context) => CupertinoAlertDialog(
                    title: Image.asset("images/cupertino.png"),
                    content: const Text('This is Alert dialog box'),
                    actions: <CupertinoDialogAction>[
                      CupertinoDialogAction( isDestructiveAction: true,
                        child: const Text('No'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      CupertinoDialogAction(
                        child: const Text('Yes'),

                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                );
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            CupertinoButton(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xff000000),
              child: const Text('Dialog Box'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CupertinoAlertDialog(
                      title: Column(
                        children: <Widget>[
                          Text(" Allow \"Maps\" to access your " +
                              " location while you use the " +
                              " app? "),
                          Icon(
                            Icons.place_outlined,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      content: new Text(
                          "Your current location will be displayed on the map and used for directions, nearby search results, and estimated travel times. "),
                      actions: <Widget>[
                        CupertinoDialogAction(
                          child: Text("Don\'t Allow"),
                          onPressed: () {
                            Navigator.of(context).pop();
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Don\'t Allow!')));
                          },
                        ),
                        CupertinoDialogAction(
                          child: Text("Allow"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: SizedBox(
                width: 100,
                height: 100,
                child: CupertinoContextMenu(
                  child: Image.asset('images/Cupertinosquare.png'),
                  actions: <Widget>[
                    CupertinoContextMenuAction(
                      child: Text(
                        "Do you Like This App Icon?",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    CupertinoContextMenuAction(

                      child: const Text('Yes,I Do!'),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('You Selected Yes!')));
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoContextMenuAction(
                      child: const Text('No,I Don\'t!'), isDestructiveAction: true,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('You Selected No! ')));
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.orange,
                  elevation: 20.0,shadowColor: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.elliptical(200, 50),
                          right: Radius.elliptical(200, 50))),
                  padding: EdgeInsetsDirectional.all(20.0),
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.8,
                      MediaQuery.of(context).size.height * 0.1)),
              onPressed: () {
                showCupertinoModalPopup(
                    barrierColor: Colors.black38,
                    // barrierDismissible: false ,

                    context: context,
                    builder: (_) {
                      return CupertinoActionSheet(
                        title: Image.asset('images/cupertino.png'),
                        cancelButton: CupertinoActionSheetAction(
                            isDestructiveAction: true,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Cancel')),
                        actions: [
                          CupertinoActionSheetAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Edit')),
                          CupertinoActionSheetAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Update')),
                          CupertinoActionSheetAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Delete'))
                        ],
                      );
                    });
              },
              child: Text('Cupertino ActionSheet',style: TextStyle(fontSize: 16),),
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
