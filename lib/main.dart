import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  bool isUserMgmtExpd = false;
  bool isBookMgmtExpd = false;
  List<String> listBookLv2Menu = ["Register Book", "Rent Book", "Return Book"];

  ListTile getLv2DrawerListFile(String menuName){
    return ListTile(
      trailing: Icon(
        Icons.add_box,
      ),
      title: Container(
          alignment: Alignment.centerRight,
          child: Text(menuName,
              style: TextStyle(fontSize: 12))),
      onTap: () => {
        print(menuName),
      },
    );
  }

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
              accountName: Text('Manager'),
              accountEmail: Text('Manager@library.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: isUserMgmtExpd
                  ? Text("User Management",
                      style: TextStyle(fontWeight: FontWeight.bold))
                  : Text("User Management"),
              onTap: () => {
                print("User Management"),
                toggleUserMgmtMenu(),
              },
              trailing: isUserMgmtExpd
                  ? Icon(Icons.keyboard_arrow_up_rounded)
                  : Icon(Icons.keyboard_arrow_down_rounded),
            ),
            if (isUserMgmtExpd)
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Column(
                  children: [
                    getLv2DrawerListFile("Register User"),
                  ],
                ),
              ),
            ListTile(
              leading: Icon(Icons.menu_book_rounded),
              title: isBookMgmtExpd
                  ? Text("Book Management",
                      style: TextStyle(fontWeight: FontWeight.bold))
                  : Text("Book Management"),
              onTap: () => {
                print("Book Management"),
                toggleBookMgmtMenu(),
              },
              trailing: isBookMgmtExpd
                  ? Icon(Icons.keyboard_arrow_up_rounded)
                  : Icon(Icons.keyboard_arrow_down_rounded),
            ),
            if (isBookMgmtExpd)
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Column(children: [
                    for (var menuName in listBookLv2Menu)
                      getLv2DrawerListFile(menuName)
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
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset('assets/images/menu_register_user.png',
                      width: 8,
                      height: 8,
                      fit: BoxFit.cover,),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 20, right: 10, bottom: 20, top: 10),
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset('assets/images/menu_rent_book.png',
                      width: 8,
                      height: 8,
                      fit: BoxFit.cover,),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
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
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset('assets/images/menu_register_book.png',
                      width: 8,
                      height: 8,
                      fit: BoxFit.cover,),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 10, right: 20, bottom: 20, top: 10),
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset('assets/images/menu_return_book.png',
                      width: 8,
                      height: 8,
                      fit: BoxFit.cover,),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
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
    theme: ThemeData(primarySwatch: Colors.yellow),
  ));
}
