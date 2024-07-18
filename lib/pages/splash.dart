import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_application_1/pages/home.dart';
// import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/login_page1.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // Future.delayed(Duration(seconds: 5), (){
    //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const home_page()));
    // });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 4000,
      backgroundColor: Colors.orangeAccent,
      splash: Column(
      children: [Image.asset('asset/Cookie.png', height: 250, width: 250,)],), // placeholder for icon
      nextScreen: LoginPage1(
        onTap: () {},
      ),
      splashIconSize: 400,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.bottomToTop);
  }
}
