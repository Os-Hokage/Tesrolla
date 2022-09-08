import 'package:flutter/material.dart';
import 'package:tesrolla/screens/components/temp_button.dart';

import '../../constants.dart';
import '../../home_controller.dart';

class TempDetails extends StatefulWidget {
  const TempDetails({
    Key? key,
    required HomeController controller,
  }) : _controller = controller, super(key: key);

  final HomeController _controller;

  @override
  State<TempDetails> createState() => _TempDetailsState();
}

class _TempDetailsState extends State<TempDetails> {
  @override
  Widget build(BuildContext context) {
    int temp = 29;

    return Padding(
      padding:  EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
            child: Row(
              children: [
                TempButton(
                  title: 'cool',
                  isActive: widget._controller.isCoolSelected,
                  svgSrc: "assets/icons/coolShape.svg",
                  press: () {
                    widget._controller.updateCoolSelectedTab();
                  },
                  activeColor: primaryColor,
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                TempButton(
                  title: 'heat',
                  isActive: !widget._controller.isCoolSelected,
                  svgSrc: "assets/icons/heatShape.svg",
                  press: () {
                    widget._controller.updateCoolSelectedTab();
                  },
                  activeColor: redColor,
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_drop_up,
                  size: 48,
                ),
              ),
              Text("$temp" + "\u2103", style: TextStyle(fontSize: 86),),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  setState((){
                    temp = temp - 1;
                  });
                },
                icon: Icon(
                  Icons.arrow_drop_down,
                  size: 48,
                ),
              ),
            ],
          ),
          Spacer(),
          Text("CURRENT TEMPERATURE"),
          SizedBox(height: defaultPadding,),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    "inside".toUpperCase(),
                    // style: TextStyle(color: Colors.white54),
                  ),
                  Text("20" + "\u2103",
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
              SizedBox(width: defaultPadding,),
              Column(
                children: [
                  Text(
                    "outside".toUpperCase(),
                    style: TextStyle(color: Colors.white54),
                  ),
                  Text("35" + "\u2103",
                    style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white54),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}