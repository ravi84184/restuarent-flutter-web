import 'package:flutter/material.dart';
import 'package:flutterrestuarent/constant.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 100,
            left: -40,
            child: _circleWidget(height: 100, width: 100, color: yellowColor),
          ),
          Positioned(
            bottom: -50,
            left: MediaQuery.of(context).size.width/2-70,
            child: _circleWidget(height: 140, width: 140, color: pinkColor),
          ),
          // Header Widget
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              children: <Widget>[
                Text(
                  "WEBUIDESIGN",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Flexible(child: _menuWidget()),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(color: primaryColor)),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "Sign up free",
                    style: TextStyle(color: primaryColor),
                  ),
                )
              ],
            ),
          ),
          // Main Container
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              children: <Widget>[
                // Containt
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                                fontSize: 18, height: 1.2, color: Colors.grey),
                            children: [
                              TextSpan(text: "Creative restaurants "),
                              TextSpan(
                                  text: "App design\n",
                                  style: TextStyle(color: primaryColor)),
                              TextSpan(
                                text:
                                    "Restaurants you love,\ndelivered to you\n",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                ),
                              ),
                              TextSpan(
                                  text:
                                      "Spend a penny bamboozied the little rotter cuppa \ngrub my good sir i don't want no agro."),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: primaryColor.withOpacity(0.3),
                                offset: Offset(0, 10),
                                blurRadius: 20,
                                spreadRadius: 2)
                          ],
                          color: primaryColor,
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text(
                          "GET STARTED",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                // Image
                Expanded(
                  child: Container(
                    child: Image.asset("assets/food.png"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _circleWidget({height, width, color}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    );
  }

  Widget _menuWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _menuItem("home"),
        _menuItem("about"),
        _menuItem("pricing"),
        _menuItem("contact"),
      ],
    );
  }

  Widget _menuItem(title) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
