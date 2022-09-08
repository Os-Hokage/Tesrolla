import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class TempButton extends StatelessWidget {
  TempButton({
    Key? key,
    required this.svgSrc,
    required this.isActive,
    required this.press,
    required this.title, required this.activeColor,
  }) : super(key: key);

  final String svgSrc, title;
  bool isActive = false;
  final VoidCallback press;
  final Color activeColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOutBack,
            height:isActive ? 76 : 50,
            width:isActive ? 76:  50,
            child: SvgPicture.asset(
              svgSrc,
              color:isActive ? activeColor : Colors.white38,
            ),
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          AnimatedDefaultTextStyle(
            duration: Duration(milliseconds: 200),
            style: TextStyle(
              color:isActive ? activeColor : Colors.white38,
              fontSize: 16,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
            child: Text(
              title.toUpperCase(),
            ),
          )
        ],
      ),
    );
  }
}