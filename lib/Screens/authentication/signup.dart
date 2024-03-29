// import 'package:etio_cart23/widget/signup_widget/signup_form.dart';

// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// import 'login.dart';
import 'widget.dart/signup_form.dart';

// import '../widget/login_form.dart';
// import '../widget/login_widget/login_footer.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get the size in LoginHeaderWidget()
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          // leading: IconButton(
          //   icon: Icon(
          //     Icons.arrow_back_ios,
          //     color: Colors.black,
          //   ),
          //   onPressed: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => const LoginScreen()));
          //   },
          // ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  // color: Colors.amber,
                  // margin: EdgeInsets.only(right: 300),
                  width: 250,
                  height: 130,
                  // decoration: const BoxDecoration(
                  // color: Colors.orange,
                  // image: DecorationImage(
                  //     image: AssetImage('assets/ec-logo3xx.png'),
                  //     fit: BoxFit.fill),
                  // ),
                  child: Stack(
                    children: const [
                      // Center(child: Image.asset('assets/images/signup.jpg')),
                    ],
                  ),
                ),

                // Container(
                //   width: 200,
                //   height: 200,
                //   decoration: const BoxDecoration(
                //     // color: Colors.orange,
                //     image: DecorationImage(
                //         image: AssetImage('assets/ec-logo3xx.png'),
                //         fit: BoxFit.fill),
                //   ),
                // ),
                const SizedBox(
                  height: 0,
                ),

                const Center(
                  child: Text(
                    'Create New Account',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),

                const SignupForm(),
                // Singupfooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
