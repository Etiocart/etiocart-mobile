import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChangePhoneNumber extends StatefulWidget {
  const ChangePhoneNumber({Key? key}) : super(key: key);

  @override
  State<ChangePhoneNumber> createState() => _ChangePhoneNumberState();
}

class _ChangePhoneNumberState extends State<ChangePhoneNumber> {
  String phoneNumber = '0939898765';
  int otpText = 1234;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.green.shade800,
          elevation: 0,
          title: const Text(''),
        ),
        body: changePhoneBody(context),
      ),
    );
  }

  String? validateMobile(String? value) {
    // Mobile numbers are of 10 digit only
    if (value!.length != 10 || value.isEmpty) {
      return 'Mobile Number must be of 10 digit';
    } else {
      return null;
    }
  }

  // final _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submit() {
    setState(() {
      if (_formKey.currentState!.validate()) {
        // TODO SAVE DATA
      }
    });

  }

  changePhoneBody(context) {
    // final TextEditingController _phoneNumberController = new TextEditingController();
    var width = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  'Reset Your Phone number',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 22,
                      color: Colors.green.shade800),
                ),
              ),
            ),
            Text('your old phone number',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade800.withOpacity(0.6)),),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                phoneNumber,
                style: TextStyle(fontSize: 20, color: Colors.grey.shade600),
              ),
            ),
            phoneFormField(),
            // (otpText==1234)?phoneFormField():Container(),
            otpBoxField(context),
            SizedBox(
              child:
                  //    contains the image of the big dog
                  Image.asset(
                "assets/images/muz-green.png",
                //specifies the opacity of the image
                opacity: const AlwaysStoppedAnimation(4.0),
                width: width * 0.6,
                height: width * 0.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: updatePhoneButton(context),
            )
          ],
        ),
      ],
    );
  }

  phoneFormField(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.06),
            borderRadius: BorderRadius.circular(0)),
        child: TextFormField(
          key: _formKey,
          validator: validateMobile,
          onTap: () {},
          keyboardType: TextInputType.phone,
          maxLines: 1,
          maxLength: 12,
          decoration: InputDecoration(
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding: const EdgeInsets.only(left: 15, bottom: 10),
            label: const Text('Phone Number'),
            filled: true,
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red.shade300),
              borderRadius: BorderRadius.circular(15),
            ),
            focusColor: Colors.green.withOpacity(0.05),
            fillColor: Colors.white,
            labelStyle: TextStyle(
                fontSize: 16,
                color: Colors.green.shade900.withOpacity(0.5)),
            hintText: 'Enter your phone number',
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue.shade100),
              borderRadius: BorderRadius.circular(15),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green.shade200),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }

  updatePhoneButton(context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      height: height*0.06,
      width: width*0.8,
      child: ElevatedButton(
        style: ButtonStyle(
            //sets the button elevation to zero
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(
                Colors.green.shade800
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  side: BorderSide(color: Colors.green.shade800),
                  borderRadius: BorderRadius.circular(18),))),
        onPressed: () {
          setState(() {
            _submit;
          });
        },
        child: const Text(
          'Update Phone',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  otpBoxField(context){
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height * 0.07,
            width: width * 0.15,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.teal.shade900),
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(15)),
            child: Center(
                child: TextField(
                    onChanged: (value){
                      if(value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '1',
                        hintStyle:
                        TextStyle(color: Colors.grey.shade500)),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 22))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: height * 0.07,
              width: width * 0.15,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.teal.shade900),
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: TextField(
                      onChanged: (value){
                        if(value.length==1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(1)],
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '2',
                          hintStyle:
                          TextStyle(color: Colors.grey.shade500)),
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 22))),
            ),
          ),
          Container(
            height: height * 0.07,
            width: width * 0.15,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.teal.shade900),
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(15)),
            child: Center(
                child: TextField(
                    onChanged: (value){
                      if(value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '3',
                        hintStyle:
                        TextStyle(color: Colors.grey.shade500)),
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 22))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: height * 0.07,
              width: width * 0.15,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green.shade900),
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: TextField(
                      onChanged: (value){
                        if(value.length==1){
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(1)],
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '4',
                          hintStyle:
                          TextStyle(color: Colors.grey.shade500)),
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 22))),
            ),
          )
        ],
      ),
    );
  }
}
