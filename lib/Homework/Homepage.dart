import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _subPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLUTTER FOOD'),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Container(
                        width: 80.0,
                        height: 80.0,
                        child: Image.asset('assets/images/profile.jpg'),
                      )),
                  Text(
                    'Nutdanai Dumrongpanichakit',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  Text(
                    'gg@gmail.com',
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ],
              ),
            ),
            ListTile(
              title: _buildDrawerItem(Icon(Icons.fastfood), 'Food'),
              onTap: () => _showSubPage(0),
            ),
            ListTile(
              title: _buildDrawerItem(Icon(Icons.person), 'Profile'),
              onTap: () => _showSubPage(1),
            ),
          ],
        ),
      ),
      body: Container(
        child: _buildSubPage(),
      ),
    );
  }

  _showSubPage(int index) {
    setState(() {
      _subPageIndex = index;
    });
    Navigator.of(context).pop();
  }

  Widget _buildSubPage() {
    switch (_subPageIndex) {
      case 0: // home page
        return FoodPage();
      case 1:
        return ProfilePage();
      default:
        return SizedBox.shrink();
    }
  }

  Row _buildDrawerItem(Widget icon, String title) {
    return Row(
      children: [
        icon,
        SizedBox(width: 8.0),
        Text(title),
      ],
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(80.0),
                child: Container(
                  width: 120.0,
                  height: 120.0,
                  child: Image.asset('assets/images/profile.jpg'),
                )),
            Text('Nutdanai Dumrongpanichakit',
                style: Theme.of(context).textTheme.headline1),
            Text(
              'diluc@gmail.com',
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodListPage extends StatelessWidget {
  const FoodListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('FOOD MENU', style: Theme.of(context).textTheme.headline1),
    );
  }
}

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child:
            Text('YOUR ORDER', style: Theme.of(context).textTheme.headline1));
  }
}

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  var _selectedBottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Menu'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Your Order',
          ),
        ],
        currentIndex: _selectedBottomNavIndex,
        onTap: (index) {
          setState(() {
            _selectedBottomNavIndex = index;
          });
        },
      ),
      body: Container(
        child: _bulidSubPage(),
      ),
    );
  }

  Widget _bulidSubPage() {
    switch (_selectedBottomNavIndex) {
      case 0:
        return FoodListPage();
      case 1:
        return OrderPage();
      default:
        return SizedBox.shrink();
    }
  }
}
