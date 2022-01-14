import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smartpunch/Account/Profile/my_account.dart';
import 'package:smartpunch/HomePage/components/balance.dart';
import 'package:smartpunch/HomePage/components/profile.dart';
import 'package:smartpunch/HomePage/components/service_holder.dart';
import 'package:smartpunch/HomePage/components/transaction.dart';
import 'package:smartpunch/Payments/reg_devices.dart';
import 'package:smartpunch/Services/new_device.dart';
import 'package:bottom_bar/bottom_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentPage = 0;
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 22),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Profile(),
                  Balance(),
                  ServiceHolder(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    child: Text('Recent Transactions', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),),
                  ),
                  Transaction()
                ],
              ),
            ),
          ),
          const RegisteredDevices(),
          const NewDevice(),
          const MyAccount(),
        ],
        onPageChanged: (index) {
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        backgroundColor: const Color(0xfffdfdfd),
        selectedIndex: _currentPage,
        showActiveBackgroundColor: true,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
            activeColor: Colors.blue,
          ),
          BottomBarItem(
            icon: const Icon(Icons.devices),
            title: const Text('My Devices'),
            activeColor: Colors.red,
            darkActiveColor: Colors.red.shade400,
          ),
          BottomBarItem(
            icon: const Icon(Icons.add_circle),
            title: const Text('New Device'),
            activeColor: Colors.greenAccent.shade700,
            darkActiveColor: Colors.greenAccent.shade400,
          ),
          BottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text('Account'),
            activeColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}



