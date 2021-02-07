import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Button extends StatelessWidget {
  // The Button Text
  final String text;

  // The Icon
  final IconData icon;

  // The Icon background color
  final Color iconBg;

  // The callback action.
  final Function callback;

  Button(this.text, this.callback,
      {Key key,
      this.icon: Icons.arrow_forward_outlined,
      this.iconBg: const Color.fromRGBO(252, 121, 105, 1)}) {
    assert(this.text != null);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.callback,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: Stack(children: [
          Positioned.fill(
              child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          )),
          Positioned(
              left: 0,
              bottom: 0,
              width: 60,
              height: 60,
              child: Container(
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100), color: iconBg),
              )),
        ]),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color.fromRGBO(238, 101, 84, 1),
        ),
      ),
    );
  }
}
