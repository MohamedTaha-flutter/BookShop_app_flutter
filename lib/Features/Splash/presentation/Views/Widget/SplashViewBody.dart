import 'package:bookly_app/Features/Splash/presentation/Views/Widget/AppBar_Splash_view.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animatedContainer;

  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    animatedContainer = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animatedContainer);
    animatedContainer.forward();
  }
  @override
  void dispose() {
    super.dispose();
    animatedContainer.dispose() ;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage(ImageApp.logoImage),
          ),
          const SizedBox(
            height: 5,
          ),
          AnimatedBuilder(
            animation: slidingAnimation,
            builder: (context, _) {
              return SlideTransition(
                position: slidingAnimation,
                child: const Text(
                  "reade Logo Text",
                  textAlign: TextAlign.center,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
