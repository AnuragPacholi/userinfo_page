import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:userinfo_page/drawer.dart';
import 'package:velocity_x/velocity_x.dart';

class UserinfoPage extends StatefulWidget {
  @override
  _UserinfoPageState createState() => _UserinfoPageState();
}

class _UserinfoPageState extends State<UserinfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.red600,
      appBar: AppBar(
        title: Title(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(left: 35),
              child: Text(
                'Bharat Vyapaar',
              ),
            )),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Vx.red600,
        elevation: 0,
      ),
      drawer: MainDrawer(),
      body: VStack([
        VxBox(
                child: [
          Row(
            children: [
              VxBox()
                  .size(180, 180)
                  .bgImage(
                      DecorationImage(image: AssetImage('assets/guy2.png')))
                  .alignTopCenter
                  .makeCentered(),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          "Are you a "
              .richText
              .withTextSpanChildren([
                "Seller ".textSpan.white.bold.make(),
                'or a '.textSpan.white.make(),
                "Buyer ?".textSpan.white.bold.make()
              ])
              .white
              .xl3
              .make()
              .p0(),
        ].column())
            .padding(Vx.mV0)
            .alignTopCenter
            .makeCentered()
            .h(240),
        ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: VxBox(
              child: VStack([
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 40, 50, 25),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors: [Vx.red700, Vx.red500])),
                child: Center(
                  child: Text(
                    "I\'m a Buyer",
                    style: TextStyle(
                      color: Vx.gray100,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 20, 50, 25),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors: [Vx.red700, Vx.red500])),
                child: Center(
                  child: Text(
                    "I\'m a Seller",
                    style: TextStyle(
                      color: Vx.gray100,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ])).gray100.make(),
        ).expand()
      ]),
    );
  }
}
