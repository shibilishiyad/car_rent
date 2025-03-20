import 'package:car_rent_app/presentation/pages/auth.dart';
import 'package:flutter/material.dart';

// Splash Screen
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0, -20),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => Auth(),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              return FadeTransition(opacity: animation, child: child);
            },
            transitionDuration: Duration(
              milliseconds: 500,
            ), 
          ),
        ).then((_) {
         
          _controller.reset();
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 600),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SlideTransition(
                    position: _animation,
                    child: Container(
                      height: 40,
                      width: 60,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: _startAnimation,
                    child: Text("Let's Go"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
