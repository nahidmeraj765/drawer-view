import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Drawer"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 170, 140, 221),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.notifications)),
              Tab(icon: Icon(Icons.search)),
              Tab(icon: Icon(Icons.person)),
              Tab(icon: Icon(Icons.settings)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: const Color.fromARGB(255, 224, 250, 254),
              child: Center(
                child: Text(
                  "Welcome Home",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 224, 250, 254),
              child: Center(
                child: Text(
                  "No Notifications",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 224, 250, 254),
              child: Center(
                child: Text(
                  "No Search Results",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 224, 250, 254),
              child: Center(
                child: Text(
                  "My Profile",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 224, 250, 254),
              child: Center(
                child: Text(
                  "Maintenance Loading....!",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 205, 192, 240),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: NetworkImage(
                              "https://endlessicons.com/wp-content/uploads/2012/10/twitter-icon-614x460.png",
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            right: 5,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 0.1,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "NaHid Hasan Meraj",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.email, size: 10),
                          SizedBox(width: 5),
                          Text(
                            "nahid.meraj765@gmail.com",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.inbox),
                title: Text("Inbox"),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(Icons.outbox),
                title: Text("Outbox"),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Favorites"),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(Icons.archive),
                title: Text("Archive"),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(Icons.delete),
                title: Text("Trash"),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(Icons.report),
                title: Text("Spam"),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {},
              ),

              ListTile(
                leading: Icon(Icons.help),
                title: Text("Helps & feedbacks"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
