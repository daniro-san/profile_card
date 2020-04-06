import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/danilo.jpg'),
              ),
              Text(
                'Danilo Rodrigues',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Amatic',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'MOBILE DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.bold,
                  color: Colors.cyan.shade100,
                  letterSpacing: 2.5,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.cyan,
                  ),
                  title: Text(
                    '+55 (14) 98108-3892',
                    style: TextStyle(
                      color: Colors.cyan.shade800,
                      fontFamily: 'Open Sans',
                      fontSize: 16.0,
                    ),
                  ),
                  onTap: () async {
                    const phone = 'tel:+55 (14) 98108-3892';

                    if (await canLaunch(phone)) {
                      await launch(phone);
                    } else {
                      throw 'Could not launch $phone';
                    }
                  },
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.cyan,
                  ),
                  title: Text(
                    'danilao.rs@gmail.com',
                    style: TextStyle(
                      color: Colors.cyan.shade800,
                      fontFamily: 'Open Sans',
                      fontSize: 16.0,
                    ),
                  ),
                  onTap: () async {
                    const email = 'mailto:danilao.rs@gmail.com';

                    if (await canLaunch(email)) {
                      await launch(email);
                    } else {
                      throw 'Could not launch $email';
                    }
                  },
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                child: ListTile(
                  leading: Icon(
                    Icons.public,
                    color: Colors.cyan,
                  ),
                  title: Text(
                    'https://github.com/daniro-san/',
                    style: TextStyle(
                      color: Colors.cyan.shade800,
                      fontFamily: 'Open Sans',
                      fontSize: 16.0,
                    ),
                  ),
                  onTap: () async {
                    const url = 'https://github.com/daniro-san/';

                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
