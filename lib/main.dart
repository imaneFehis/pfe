import 'package:flutter/material.dart';
import 'package:log_page_imane/screens/login_screen.dart';
import 'package:log_page_imane/utilities/constants.dart';
import 'package:log_page_imane/screens/singup.dart';
// import 'package:mysql1/mysql1.dart';

// import 'package:log_page_imane/screens/tap_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Hotel',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Color.fromARGB(255, 253, 253, 253),
        textTheme: TextTheme(
          headline4: TextStyle(
              color: Color.fromARGB(255, 251, 200, 200),
              fontWeight: FontWeight.bold),
          button: TextStyle(color: kPrimaryColor),
          headline2:
              TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(.2),
            ),
          ),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/homepic.jpg'),
            //  image: AssetImage("assets\hotel4.jpg"),
            // image: NetworkImage(
            // drtha f main  wininmain adiii hiya
            //     "https://firebasestorage.googleapis.com/v0/b/myhotel-3f70a.appspot.com/o/hotel3.jpg?alt=media&token=7dbb5cc9-8bd7-460f-bc39-d3a111bec79c"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Find The \n",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  TextSpan(
                    text: "Perfect Place",
                    style: Theme.of(context).textTheme.headline3,
                  )
                ],
              ),
            ),
            //kalktni clavier ay tathrk wahdha
            Spacer(),
            FittedBox(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ));
                },
                // waittttt
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xfffbdffff),
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "        LOG IN",
                      ),
                      SizedBox(width: 25),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            FittedBox(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SignUp();
                    },
                  ));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xfffbdffff),
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "     SING UP ",
                      ),
                      SizedBox(width: 25),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
