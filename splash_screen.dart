import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splash_screen_app/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder:(_) => const MyHomePage(),
          )
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body:Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue,Colors.purple],
            begin: Alignment.topRight,
              end: Alignment.bottomLeft
            ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.edit,
              size: 60,
              color: Colors.white,
            ),
            SizedBox(height: 10,),
            Text("Waleed App",
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  letterSpacing: 4,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
              ),
            ),

          ],
        )
      )
    );
  }
}
