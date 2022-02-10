import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smartpunch/Account/Profile/my_account.dart';
import 'package:smartpunch/HomePage/components/transaction.dart';
import 'package:smartpunch/HomePage/new_home.dart';
import 'package:smartpunch/Payments/reg_devices.dart';
import 'package:smartpunch/Services/feedback.dart';
import 'package:smartpunch/Services/new_device.dart';
import 'package:smartpunch/Services/referral.dart';
import 'package:smartpunch/login/login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<SliderDrawerState> _key = GlobalKey<SliderDrawerState>();
  late Widget page;
  late String title;

  @override
  void initState() {
    // TODO: implement initState
    page = const NewHome();
    title = 'Welcome, David';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliderDrawer(
        appBar: SliderAppBar(
          drawerIconColor: Colors.white,
          appBarColor: const Color(0xFF0D60D8),
          drawerIconSize: 30,
          appBarHeight: 70,
          title: Text(title, style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
          appBarPadding: const EdgeInsets.only(top: 20),
        ),
        key: _key,
        // sliderOpenSize: 179,
        slider: _SliderView(
          onItemClick: (page, title) {
            _key.currentState!.closeSlider();
            setState(() {
              this.page = page;
              this.title = title;
            });
          },
        ),
        child: page,
      ),
    );
  }
}

class _SliderView extends StatelessWidget {
  final Function(Widget, String)? onItemClick;

  const _SliderView({Key? key, this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        height: MediaQuery.of(context).size.height * 1,
        color: const Color(0xFF0D60D8),
        // padding: const EdgeInsets.only(top: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 30,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'David',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'BalsamiqSans'),
            ),
            const SizedBox(
              height: 20,
            ),
            _SliderMenuItem(
                page: const NewHome(),
                iconData: Icons.home,
                onTap: onItemClick,
                title: 'Home', appBarTitle: 'Welcome, David',),
            _SliderMenuItem(
                page: const MyAccount(),
                iconData: Icons.account_circle_sharp,
                onTap: onItemClick,
                title: 'Profile', appBarTitle: 'Profile',),
            _SliderMenuItem(
                page: const RegisteredDevices(fromDrawer: true,),
                iconData: Icons.attach_money,
                onTap: onItemClick,
                title: 'Buy Unit', appBarTitle: 'My Devices',),
            _SliderMenuItem(
                page: const Referral(),
                iconData: Icons.mobile_friendly,
                onTap: onItemClick,
                title: 'Referrals', appBarTitle: 'Invite Friends',),
            _SliderMenuItem(
                page: const FeedBack(fromDrawer: true,),
                iconData: Icons.phone,
                onTap: onItemClick,
                title: 'Contact Us', appBarTitle: 'Call Us',),
            _SliderMenuItem(
                page: const Transaction(fromDrawer: true,),
                iconData: Icons.skip_previous,
                onTap: onItemClick,
                title: 'Recent Transactions', appBarTitle: 'Recent Transactions',),
            // _SliderMenuItem(
            //     page: const NewHome(),
            //     iconData: Icons.feedback,
            //     onTap: onItemClick,
            //     title: 'Feedback / Help', appBarTitle: '',),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: ListTile(
                title: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                onTap: () {showAlertDialog(context);},
              )
            )
          ],
        ),
      ),
    ]);
  }
}

class _SliderMenuItem extends StatelessWidget {
  final String title;
  final String appBarTitle;
  final Widget page;
  final IconData iconData;
  final Function(Widget, String)? onTap;

  const _SliderMenuItem(
      {Key? key,
      required this.page,
      required this.iconData,
      required this.onTap,
      required this.title,
      required this.appBarTitle
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      leading: Icon(
        iconData,
        color: Colors.white,
      ),
      onTap: () => onTap?.call(page, appBarTitle),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = TextButton(
    child: const Text(
      "Confirm",
      style: TextStyle(color: Color(0xFF0D60D8)),
    ),
    onPressed: () {
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.leftToRight,
              duration: const Duration(milliseconds: 600),
              child: const LoginScreen()));
    },
  );

  Widget cancelButton = TextButton(
    child: const Text(
      "Cancel",
      style: TextStyle(color: Color(0xFF0D60D8)),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Logging Out?", style: TextStyle(
      color: Color(0xFF0D60D8)
    ),),
    content: const Text("Are you sure you want to log out?"),
    actions: [
      cancelButton,
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}



