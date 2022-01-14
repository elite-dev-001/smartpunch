import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smartpunch/Account/Profile/my_account.dart';



class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('David', style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xff40196D)
          ),),
          IconButton(
              padding: const EdgeInsets.all(0.0),
              onPressed: (){
                Navigator.push(context, PageTransition(
                    type: PageTransitionType.rightToLeft,
                    duration: const Duration(milliseconds: 600),
                    child: const MyAccount()));
              },
              color: const Color(0xff40196D),
              iconSize: 30,
              icon: const Icon(Icons.account_circle_sharp)
          )
        ],
      ),
    );
  }
}
