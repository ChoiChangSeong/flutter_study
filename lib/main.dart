import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  bool isUserMgmtExpd = false;
  bool isBookMgmtExpd = false;

  void toggleUserMgmtMenu() {
    setState(() {
      isUserMgmtExpd = !isUserMgmtExpd;
      print(isUserMgmtExpd);
    });
  }

  void toggleBookMgmtMenu() {
    setState(() {
      isBookMgmtExpd = !isBookMgmtExpd;
      print(isBookMgmtExpd);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Library Management',
          ),
          /*
        leading: IconButton(icon: Icon(Icons.menu),
                            onPressed:() => {print("menu")}),
        */
          actions: [
            IconButton(
                icon: Icon(Icons.search), onPressed: () => {print("search")}),
          ]),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('관리자'),
              accountEmail: Text('Manager@library.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: Text("User Management"),
              onTap: () => {
                print("User Management"),
                toggleUserMgmtMenu(),
              },
              trailing: Icon(Icons
                  .keyboard_arrow_down_rounded), //keyboard_control_key_rounded
            ),
            if (isUserMgmtExpd)
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Column(children: [
                    ListTile(
                      title: Text("Register User"),
                      onTap: () => {
                        print("Register User"),
                      },
                    )
                  ])),
            ListTile(
              leading: Icon(Icons.menu_book_rounded),
              title: Text("Book Management"),
              onTap: () => {
                print("Book Management"),
                toggleBookMgmtMenu(),
              },
              trailing: Icon(Icons
                  .keyboard_arrow_down_rounded), //keyboard_control_key_rounded
            ),
            if (isBookMgmtExpd)
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Column(children: [
                    ListTile(
                      title: Text("Register Book"),
                      onTap: () => {
                        print("Register Book"),
                      },
                    ),
                    ListTile(
                      title: Text("Rent Book"),
                      onTap: () => {
                        print("Rent Book"),
                      },
                    ),
                    ListTile(
                      title: Text("Return Book"),
                      onTap: () => {
                        print("Return Book"),
                      },
                    ),
                  ])),
          ],
        ),
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 20, right: 10, bottom: 10, top: 20),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.all(20),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 20, right: 10, bottom: 20, top: 10),
                    child: Container(
                        decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(20),
                    )),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 10, right: 20, bottom: 10, top: 20),
                    child: Container(
                        decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(20),
                    )),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 10, right: 20, bottom: 20, top: 10),
                    child: Container(
                        decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(20),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
    title: "Library Management",
    theme: ThemeData(primarySwatch: Colors.orange),
  ));
}
