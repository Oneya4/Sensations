import 'package:flutter/material.dart';

import '/clippers/first_clipper.dart';
import '/clippers/second_clipper.dart';
import '/clippers/third_clipper.dart';
import '/screens/explore_screen.dart';
import '/widgets/nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;
    final headingStyle = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).colorScheme.onPrimary,
    );
    final subheadingStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Theme.of(context).colorScheme.onPrimary,
    );
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: dSize.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('https://jooinn.com/images/palm-tree-18.jpg'),
            ),
          ),
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Daydream', style: headingStyle),
                    Text('go beyond the farm', style: subheadingStyle),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                width: dSize.width,
                child: ClipPath(
                  clipper: FirstClipper(),
                  child: Container(
                    height: dSize.height * .43,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://annemckinnell.com/blog/wp-content/uploads/2013/03/california_20130222__MG_0556-Edit-Edit_lg.jpg'),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Meditation', style: headingStyle),
                        Text('discover happiness', style: subheadingStyle),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: dSize.height * .29,
                width: dSize.width,
                child: ClipPath(
                  clipper: SecondClipper(),
                  child: Container(
                    height: dSize.height * .31,
                    decoration: const BoxDecoration(
                        // color: Colors.red,
                        // image: DecorationImage(
                        //   fit: BoxFit.cover,
                        //   image: NetworkImage(
                        //       'https://beautifulboundarieslawn.com/wp-content/uploads/2021/02/TYPES-OF-PALM-TREES.jpg'),
                        // ),
                        ),
                  ),
                ),
              ),
              Positioned(
                top: dSize.height * .52,
                width: dSize.width,
                child: ClipPath(
                  clipper: ThirdClipper(),
                  child: Container(
                    height: dSize.height * .38,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://wallpapers13.com/wp-content/uploads/2015/12/Space-planets-HD-Wallpaper-653-1600x1200.jpg'),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sensations', style: headingStyle),
                        Text('feel the moment', style: subheadingStyle),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const NavBar(),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.ac_unit),
          backgroundColor: Colors.transparent,
          onPressed: () {
            Navigator.of(context).pushNamed(ExploreScreen.routeName);
          },
        ),
      ),
    );
  }
}
