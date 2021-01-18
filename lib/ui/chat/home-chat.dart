import 'package:flutter/material.dart';
import 'package:whatsapp_redesign/util/app_colors.dart';

class HomeChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // int _currentTab = 0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              leading: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Edit',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              backgroundColor: Color(0xff0DBA46),
              actions: [
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () => {},
                )
              ],
              bottom: TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    text: 'Chats',
                  ),
                  Tab(
                    text: 'Groups',
                  ),
                  Tab(
                    text: 'Calls',
                  ),
                  Tab(
                    text: 'Active',
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                ListView(
                  children: [
                    story(),
                  ],
                ),
                Text('Group'),
                Text('Call'),
                Text('Active'),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: fabColors,
              child: Icon(
                Icons.camera_alt_outlined,
                size: 30.0,
              ),
              onPressed: () {},
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              elevation: 10.0,
              shape: CircularNotchedRectangle(),
              notchMargin: 6.0,
              child: Container(
                color: Colors.white60,
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.chat_outlined,
                            color: bottomAppBarIconColors,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.favorite_border,
                            color: bottomAppBarIconColors,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(width: 5.0),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.person_outline,
                            color: bottomAppBarIconColors,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.settings_outlined,
                            color: bottomAppBarIconColors,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget story() {
  return Container();
}

Widget chatLists() {
  return Container(
    child: ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            child: Image.asset('image/face1.jpg'),
          ),
          title: Text('Alina Finiti'),
          subtitle: Text('so any plan this weekend?'),
        ),
      ],
    ),
  );
}
// Widget singleList(){

//   return listt
// }
