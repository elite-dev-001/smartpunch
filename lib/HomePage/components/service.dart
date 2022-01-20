import 'package:flutter/material.dart';


class Service extends StatelessWidget {
  const Service({Key? key,
    required this.icon,
    required this.firstText,
    required this.secondText,
    required this.lastText,
    required this.color,
    required this.myFunc,
  }) : super(key: key);

  final IconData icon;
  final String firstText;
  final String secondText;
  final String lastText;
  final int color;
  final VoidCallback myFunc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myFunc,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.28,
        width: MediaQuery.of(context).size.width * 0.42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(color).withOpacity(0.4)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                child: Icon(
                    icon,
                    color: Color(color),
                    size: 30,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.155,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(firstText, style: TextStyle(
                        color: Color(color),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    Text(secondText, style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
                child: Text(lastText, style: TextStyle(
                    color: Color(color),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
