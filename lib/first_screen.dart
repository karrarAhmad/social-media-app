import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    AssetImage('images/photo_2020-06-29_08-47-30.jpg'),
              ),
              accountEmail: Text('Karrar.ahmad.hussen@gmail.com'),
              accountName: Text('Karrar Ahmad'),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.blueAccent,
              ),
              title: Text(
                'Home',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text('Back To Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.blueAccent,
              ),
              title: Text(
                'Setting',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text('go To Setting menu '),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.lock,
                color: Colors.blueAccent,
              ),
              title: Text(
                'Privacy ',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text('go To Privacy menu '),
              onTap: () {},
            ),
            SizedBox(
              height: 400,
            ),
            ListTile(
              leading: Icon(
                Icons.people_outline,
                color: Colors.blueGrey,
              ),
              title: Text(
                'Log Out',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Text(
          'Social Media Flutter App',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(5),
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'What\’s New',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 10, left: 150),
                child: IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.blueGrey[400],
                  iconSize: 40,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Text(
            '  Stories : ',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(2),
            child: Row(
              children: <Widget>[
                Container(
                  height: 200,
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        backgroundImage:
                            AssetImage('images/photo_2020-06-29_08-47-30.jpg'),
                      ),
                      accountEmail: Text('Karrar.ahmad.hussen@gmail.com'),
                      accountName: Text('My Story'),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage(
                            'images/photo-1500648767791-00dcc994a43e.jpg'),
                      ),
                      decoration: BoxDecoration(color: Colors.blueGrey),
                      accountEmail: Text('mohammedmussab@gmail.com'),
                      accountName: Text('Mohammed Mussab '),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        backgroundImage:
                            AssetImage('images/featureuserpersona.jpg'),
                      ),
                      decoration: BoxDecoration(color: Colors.blueGrey),
                      accountEmail: Text('ddssab@gmail.com'),
                      accountName: Text('Dady '),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage(
                            'images/104930242_3288663777860779_5468274181301751369_n.png'),
                      ),
                      decoration: BoxDecoration(color: Colors.blueGrey),
                      accountEmail: Text('Alimussab@gmail.com'),
                      accountName: Text('Ali Mussab '),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CircleAvatar(
                    maxRadius: 40,
                    backgroundImage: AssetImage(
                      'images/photo_2020-06-29_08-47-30.jpg',
                    )),
              ),
              Text(
                'New Karrar\’s Post :',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '      Yesterday I had went to my city with Iraqi Ari Plane It was a good flight  :',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(
            'images/airplane-travel-tip.jpg',
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton.icon(
                label: Text('Like'),
                icon: Icon(
                  Icons.linked_camera,
                  color: Colors.blueAccent,
                  size: 40,
                ),
                onPressed: () {},
              ),
              FlatButton.icon(
                label: Text('Comment'),
                icon: Icon(
                  Icons.comment,
                  color: Colors.white,
                  size: 40,
                ),
                onPressed: () {},
              ),
              FlatButton.icon(
                label: Text('Share'),
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                  size: 40,
                ),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: CircleAvatar(
                    maxRadius: 40,
                    backgroundImage: AssetImage(
                      'images/featureuserpersona.jpg',
                    )),
              ),
              Text(
                'New Dady\’s Post :',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '      It is wonderful  view  :',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(
            'images/223087771.jpg',
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton.icon(
                label: Text('Like'),
                icon: Icon(
                  Icons.linked_camera,
                  color: Colors.blueAccent,
                  size: 40,
                ),
                onPressed: () {},
              ),
              FlatButton.icon(
                label: Text('Comment'),
                icon: Icon(
                  Icons.comment,
                  color: Colors.white,
                  size: 40,
                ),
                onPressed: () {},
              ),
              FlatButton.icon(
                label: Text('Share'),
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                  size: 40,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
