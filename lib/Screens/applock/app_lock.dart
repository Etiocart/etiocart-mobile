import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AppLock extends StatefulWidget {
  const AppLock({Key? key}) : super(key: key);

  @override
  State<AppLock> createState() => _AppLockState();
}

class _AppLockState extends State<AppLock> {
  // var unlocks = Image.asset("assets/icons/unlock.png");
  // var locks = Image.asset("assets/icons/unlock.png");

  String iconLock = "assets/icons/unlock.png";
  String iconLock2 = "assets/icons/unlock.png";
  Color _favIconColor = Colors.green.shade500;
  Color _favIconColor2 = Colors.green.shade500;
  bool isPressed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.1),
      appBar: AppBar(
        title: Text(''),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: appLockView(context),
    );
  }

  appLockView(context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    Color _iconColor = Colors.blue;

    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedTextKit(
            isRepeatingAnimation: false,
            animatedTexts:[
              //animation text package for animating text
              TyperAnimatedText('App Lock',
                  textStyle: TextStyle(fontSize: 28,
                  fontWeight: FontWeight.w600,
                    color: Colors.green.shade700
                  ),
              //specify the duration of the animation
              speed: Duration(milliseconds: 100)
              )
            ]
          ),
          Text(
            'Your PassWord Well Protected',
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          SizedBox(
            child:
            //    contains the image of the big dog
            Image.asset(
              "assets/images/muz-green.png",
              //specifies the opacity of the image
              opacity: AlwaysStoppedAnimation(4.0),
              width: width * 0.8,
              height: width * 0.95,
            ),
          ),
          Row(
            //contains the buttons in one row
            //the two lock buttons
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 10),
                child: Column(
                  children: [
                    //the icon button for wallet lock
                    IconButton(
                        onPressed: () {
                          setState(() {
                            //if pressed variable is true which is at line20
                            if (isPressed == true)
                              // it sets it to
                              //false when its pressed
                              isPressed = false;
                            else {
                              //or else keeps it at true
                              isPressed == true;
                            }
                            //if the iconcolors which is set at 18 is shade500 then
                            //this might require an and operand to add the unlock parameter
                            if(_favIconColor2 == Colors.green.shade500){
                              //set the color to red
                              _favIconColor2 = Colors.red;
                              //and also change the icon to lock.png
                              iconLock2 = "assets/icons/lock.png";
                            }else{
                              //else keep them both at where they are
                              _favIconColor2 = Colors.green.shade500;
                              iconLock2 = "assets/icons/unlock.png";

                            }
                          });
                        },
                        icon: Image.asset(
                          // the image asset displayed
                          height: height*0.2,
                          width: width*0.2,
                          //displays the icon
                          iconLock2,
                          //sets the color
                          color: _favIconColor2,
                        )),
                    Text('Lock Wallet')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
                child: Column(
                  children: [
                    IconButton(
                        //the icon button for applock
                        onPressed: () {
                          setState(() {
                            //if pressed variable is true which is at line20
                            if (isPressed == true) {
                              // it sets it to
                              //false when its pressed
                              isPressed = false;
                              lockConfirmationView();
                            } else {
                              //or else keeps it at true
                              isPressed == true;
                            }
                            //if the iconcolors which is set at 18 is shade500 then
                            //this might require an and operand to add the unlock parameter
                            if(_favIconColor == Colors.green.shade500){
                              //set the color to red
                              _favIconColor = Colors.red;
                              //and also change the icon to lock.png
                              iconLock = "assets/icons/lock.png";
                            }else{
                              //else keep them both at where they are
                              _favIconColor = Colors.green.shade500;
                              iconLock = "assets/icons/unlock.png";

                            }
                          });
                        },
                        icon: Image.asset(
                                //the image icon displayed
                                iconLock,
                                height: height*0.15,
                                width: width*0.15,
                                //sets the icons color
                                color: _favIconColor,
                              )),
                    Text('Lock App')
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
  //alert dialog for taking in password and pin
  // if phone does not have internal authentication
  lockConfirmationView() {
    return AlertDialog();
  }
}
