import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18,left: 18,top: 24),
      child: Row(
        children: [
           const Image(
            image: AssetImage(ImageApp.logoImage) ,
            height: 100,
            width: 100,
          ),
          const Spacer(),
          IconButton(
              onPressed: ()
              {
                GoRouter.of(context).push('/searchViewBody') ;
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: Colors.white,
                size: 24,
              ))
        ],
      ),
    );
  }
}
