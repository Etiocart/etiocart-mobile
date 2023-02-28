import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaymentConfirmation extends StatefulWidget {
  const PaymentConfirmation({Key? key}) : super(key: key);

  @override
  State<PaymentConfirmation> createState() => _PaymentConfirmationState();
}

class _PaymentConfirmationState extends State<PaymentConfirmation> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.teal.shade800,
          elevation: 0,
          title: Text('Enter Pin', style: TextStyle(color: Colors.teal.shade900),),
        ),
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
            child: Column(
              children: [
                pinBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget pinBox() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.5,
      color: Colors.white,
      child: Column(
        children: [
          Text(
            'Verification code',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.teal.shade900),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              textAlign: TextAlign.center,
              'Please enter your pin to confirm  your payment',
              style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              'This is used to confirm your identity',
              style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: height * 0.08,
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
                    height: height * 0.08,
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
                  height: height * 0.08,
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
                    height: height * 0.08,
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
                                hintText: '4',
                                hintStyle:
                                    TextStyle(color: Colors.grey.shade500)),
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 22))),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Container(
              padding: const EdgeInsets.only(top: 0,bottom: 0),
              height: height * 0.06,
              width: width * 0.8,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurpleAccent.shade700),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ))),
                  child: const Text(
                    'Verify',
                    style: TextStyle(fontSize: 17),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              'Re enter code',
              style: TextStyle(fontSize: 16, color: Colors.red.shade800),
            ),
          ),
        ],
      ),
    );
  }
}
