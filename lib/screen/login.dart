import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'listpostescreen.dart';
import 'menu.dart';

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.bounceOut,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
       resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: new Stack(fit: StackFit.expand, children: <Widget>[
        new Image(
          image: new AssetImage("assets/girl.jpeg"),
          fit: BoxFit.cover,
          colorBlendMode: BlendMode.softLight,
          color: Colors.black87,
        ),
        new Theme(
          data: new ThemeData(
              brightness: Brightness.dark,
              inputDecorationTheme: new InputDecorationTheme(
                // hintStyle: new TextStyle(color: Colors.blue, fontSize: 20.0),
                labelStyle:
                    new TextStyle(color: Colors.tealAccent, fontSize: 25.0),
              )),
          isMaterialAppTheme: true,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: _iconAnimation.value * 140.0,
              ),
              new Container(
                padding: const EdgeInsets.all(10.0),
                child: new Form(
                  autovalidate: true,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new TextFormField(
                        decoration: new InputDecoration(
                            labelText: "Enter Email", fillColor: Colors.white),
                        keyboardType: TextInputType.text,
                        controller: emailController,
                      ),
                      new TextFormField(
                        decoration: new InputDecoration(
                          labelText: "Enter Password",
                        ),
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        controller: passwordController,
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                      ),
                      new Column(
                        children: <Widget>[
                          Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              new MaterialButton(
                                height: 50.0,
                                minWidth: MediaQuery.of(context).size.width-20,
                                // minWidth: double.infinity,
                                color: Colors.green,
                                splashColor: Colors.teal,
                                textColor: Colors.white,
                                child: new Icon(FontAwesomeIcons.lockOpen),
                                onPressed: () {
                                  if (emailController.text != null &&
                                      passwordController.text != null) {
                                    if (emailController.text == 'toto' &&
                                        passwordController.text == 'toto') {
                                      print(passwordController.text);
                                      Navigator.push(context,
                                          new MaterialPageRoute(
                                              builder: (BuildContext context) {
                                        return new MyApp();
                                      }));
                                    } else {
                                      print("Credentials incorrect");
                                    }
                                  } else {
                                    print(emailController.text);
                                  }
                                },
                              ),
                            ],
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              new FlatButton(
                                onPressed: () {
                                  /*...*/
                                },
                                child: Text(
                                  "Sing up",
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
