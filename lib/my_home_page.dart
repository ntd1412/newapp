import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  List<String> PopMenu =[
    "Add","Setting","About","Logout"
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Dự án nhóm 2",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          PopupMenuButton(
              itemBuilder: (context){
                return PopMenu.map((e){
                  return PopupMenuItem(child: Text(e));
                }).toList();
              },
          )
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
             colors: [
               Colors.pink,
               Colors.black
             ]
            ),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
              )
          ),
        ),
      ),
      body: Column(
        children: [
          Text(
            "Dat Lai Dep Trai.",
            style: TextStyle(
              color: Colors.purple,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Dat Van Dep Trai",
            style: TextStyle(
              color: Colors.red,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color : Colors.blueAccent,
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.blue
                ]
              ),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                    size: 36,
                  ),
                  onPressed: (){
                    print("Trang Chủ");
                    var snackBar = new SnackBar(
                        content: Text("Trang Chủ")
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.share,
                    color: Colors.pink,
                    size: 36,
                  ),
                  onPressed: (){
                    print("Chia sẽ");
                    var snackBar = new SnackBar(
                        content: Text("Chia sẽ")
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.account_box,
                    color: Colors.pink,
                    size: 36,
                  ),
                  onPressed: (){
                    print("Cá nhân");
                    var snackBar = new SnackBar(
                        content: Text("Cá nhân")
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
            )
          ),
          BottomNavigationBarItem(
            label: "Setting",
              icon: Icon(
                Icons.settings,
              )
          ),
          BottomNavigationBarItem(
              label: "Logout",
              icon: Icon(
                Icons.logout,
              )
          )
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        foregroundColor: Colors.green,
        shape: CircleBorder(),
        onPressed: (){

        },
        child:Icon(
          Icons.add
        )
      ),
      drawer: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red
            ),
            child: Text("Hello"),
          ),
          ListTile(
            onTap: (){
              Navigator.pop(context);
            },
            title: Text("Hello"),
          )
        ],
      ),
    );
  }
}
