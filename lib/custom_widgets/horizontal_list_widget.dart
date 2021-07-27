import 'package:flutter/material.dart';

class OnlineFriendWidget extends StatelessWidget {
  final int index;
  final bool isChatDesign;

  OnlineFriendWidget({required this.index, required this.isChatDesign});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isChatDesign ? EdgeInsets.all(0) : EdgeInsets.all(8.0),
      child: Container(
        width: isChatDesign ? 50.0 : 70.0,
        height: isChatDesign ? 50.0 : 70.0,
        decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/profile${index + 1}.jpeg")),
        ),
        child: isChatDesign
            ? index % 3 == 0
                ? Container()
                : Stack(
                    fit: StackFit.loose,
                    children: [
                      Positioned(
                        left: isChatDesign ? 5 : 10.0,
                        bottom: isChatDesign ? 0 : 8.0,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.5, color: Colors.white),
                            shape: BoxShape.circle,
                            color: Colors.orange[200],
                          ),
                          width: 10.0,
                          height: 10.0,
                        ),
                      ),
                    ],
                  )
            : Stack(
                fit: StackFit.loose,
                children: [
                  Positioned(
                    left: isChatDesign ? 5 : 10.0,
                    bottom: isChatDesign ? 0 : 8.0,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.5, color: Colors.white),
                        shape: BoxShape.circle,
                        color: Colors.orange[200],
                      ),
                      width: 10.0,
                      height: 10.0,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
