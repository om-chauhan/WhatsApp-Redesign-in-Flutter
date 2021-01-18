import 'package:flutter/material.dart';
import 'package:whatsapp_redesign/ui/chat/home-chat.dart';

class Otp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Redesign',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context, false),
            icon: Icon(Icons.arrow_back),
          ),
          backgroundColor: Color(0xff465A65),
        ),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 250.0,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff465A65),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    'WhatsApp',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment.topCenter,
                transform: Matrix4.translationValues(0, 120, 1),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Divider(
                      color: Colors.white,
                    ),
                    Text(
                      'Are you new to WhatsApp?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Text(
                      'Enter the 4 digit code sent to your number',
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          otpBox(),
                          otpBox(),
                          otpBox(),
                          otpBox(),
                        ]),
                    Divider(
                      color: Colors.white,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Resend code',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.arrow_forward),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeChat()),
                              );
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget otpBox() {
  return SizedBox(
    height: 50.0,
    width: 60.0,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
              blurRadius: 1.0, offset: Offset(0.0, 0.75), color: Colors.grey),
        ],
      ),
    ),
  );
}
