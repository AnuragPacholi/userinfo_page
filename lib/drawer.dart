import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(5),
              color: Theme.of(context).primaryColor,
              child: Center(
                child: Column(
                  // Give your app logo over here.
                  children: [
                    Container(
                      width: 140,
                      height: 140,
                      margin: EdgeInsets.only(
                        top: 20,
                        // bottom: 10, //Comment this out if want padding between logo and name.
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/logo.png'),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      'Bharat Vyapaar',
                      style: TextStyle(
                        fontSize: 22,
                        color: Vx.gray100,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Making India Atmanirbhar !!',
                      style: TextStyle(
                        fontSize: 15,
                        color: Vx.gray100,
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.storefront_rounded,
                color: Vx.red500,
                size: 25,
              ),
              title: Text(
                'Buy Products (e-Comm)',
                style: TextStyle(color: Vx.red500, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.business_center_sharp,
                color: Vx.red500,
                size: 25,
              ),
              title: Text(
                'Sell your Product !!',
                style: TextStyle(color: Vx.red500, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.chat_outlined,
                color: Vx.red500,
                size: 25,
              ),
              title: Text(
                'Connect with Others (Chat Box)',
                style: TextStyle(color: Vx.red500, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.delivery_dining,
                color: Vx.red500,
                size: 25,
              ),
              title: Text(
                'Delivery Options',
                style: TextStyle(color: Vx.red500, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.cloud_rounded,
                color: Vx.red500,
                size: 25,
              ),
              title: Text(
                'Weather',
                style: TextStyle(color: Vx.red500, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Vx.red500,
                size: 25,
              ),
              title: Text(
                'Expert Advices',
                style: TextStyle(color: Vx.red500, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.work,
                color: Vx.red500,
                size: 25,
              ),
              title: Text(
                'Need Employment',
                style: TextStyle(color: Vx.red500, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.live_help_outlined,
                color: Vx.red500,
                size: 25,
              ),
              title: Text(
                'HelpLines',
                style: TextStyle(color: Vx.red500, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
