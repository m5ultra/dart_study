import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('抽屉导航'),
        elevation: 0.0,
      ),
      body: const SafeArea(
        child: HomePage(),
      ),
      drawer: const DrawerList(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('测试抽屉导航',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600))
        ],
      ),
    );
  }
}

class DrawerList extends StatefulWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(top: 0),
        children: [
          // Text('Hello Drawer'),
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/001.jpg'), fit: BoxFit.cover)),
            accountName: Text('Deni'),
            accountEmail: Text('ams9527@outlook.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/android-chrome-512x512.png'),
            ),
            currentAccountPictureSize: Size.square(72.0),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('设置'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const Divider(
            thickness: 1,
          ),
          const ListTile(
            leading: Icon(Icons.account_balance),
            title: Text('余额'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const Divider(
            thickness: 1,
          ),
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('我的'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('回退'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => Navigator.pop(context),
          ),
          const AboutListTile(
              applicationName: '应用名称',
              applicationVersion: '10.21.3',
              applicationIcon: CircleAvatar(
                backgroundImage: AssetImage('images/001.jpg'),
              ),
              icon: CircleAvatar(
                backgroundImage: AssetImage('images/001.jpg'),
              ),
              applicationLegalese: '应用法律条例',
              aboutBoxChildren: [
                Text('条例一: 111'),
                Text('条例二: 222'),
                Text('条例三: 333'),
              ],
              dense: true,
              child: Text('关于'))
        ],
      ),
    );
  }
}
