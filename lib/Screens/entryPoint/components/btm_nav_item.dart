import 'package:ejemplo_job/Screens/model/menu.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';


class BtmNavItem extends StatelessWidget {
  const BtmNavItem({
    Key? key,
    required this.navBar,
    required this.riveOnInit,
    required this.selectedNav, required Null Function() press,
  }) : super(key: key);

  final Menu navBar;
  final ValueChanged<Artboard> riveOnInit;
  final Menu selectedNav;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 36,
            width: 36,
            child: Opacity(
              opacity: selectedNav == navBar ? 1 : 0.5,
              child: RiveAnimation.asset(
                navBar.rive.src,
                artboard: navBar.rive.artboard,
                onInit: riveOnInit,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
