import 'package:ethiocart/Screens/payement/payment_confirmation.dart';
import 'package:flutter/material.dart';

class PayInfoConfirm extends StatefulWidget {
  const PayInfoConfirm({Key? key}) : super(key: key);

  @override
  State<PayInfoConfirm> createState() => _PayInfoConfirmState();
}

class _PayInfoConfirmState extends State<PayInfoConfirm> {

  int price = 10;
  int counter = 10;
  int seats = 1;

  generalAddcounter() {
    price = counter + price;
    seats = seats + 1;
  }

  generalSubCounter() {
    while (true) {
      if (price != 10) {
        price = price - 10;
      } else {
        return price;
      }
      break;
    }
    seats = seats - 1;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Colors.white,
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 15),
                child: Center(
                  child: Text(
                    'Confirm Your Information',
                    style: TextStyle(fontSize: 22, color: Colors.teal.shade900),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: buyTicketModule(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: confirmPaymentbutton(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buyTicketModule(){
    return Column(
      children: [
        Row(
          children: const [
            Text('Buyer'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.1)),
            child: TextFormField(
              style: const TextStyle(fontSize: 18),
              autocorrect: false,
              textCapitalization: TextCapitalization.none,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'buyer',
                  hintStyle:
                  TextStyle(color: Colors.grey.shade700)),
            ),
          ),
        ),
        Row(
          children: const [
            Text('Buyer'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.1)),
            child: TextFormField(
              style: const TextStyle(fontSize: 18),
              autocorrect: false,
              textCapitalization: TextCapitalization.none,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'buyer',
                  hintStyle:
                  TextStyle(color: Colors.grey.shade700)),
            ),
          ),
        ),
        Row(
          children: const [
            Text('Buyer'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.1)),
            child: TextFormField(
              style: const TextStyle(fontSize: 18),
              autocorrect: false,
              textCapitalization: TextCapitalization.none,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'buyer',
                  hintStyle:
                  TextStyle(color: Colors.grey.shade700)),
            ),
          ),
        ),
        Row(
          children: const [
            Text('Buyer'),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 20),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.1)),
            child: TextFormField(
              style: const TextStyle(fontSize: 18),
              autocorrect: false,
              textCapitalization: TextCapitalization.none,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'buyer',
                  hintStyle:
                  TextStyle(color: Colors.grey.shade700)),
            ),
          ),
        ),
        bookingDetail()
      ],
    );
  }


  Widget bookingDetail(){
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.3,
      width: width * 1.0,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('Destination:', style: TextStyle(fontSize: 18),),
              ),
              Padding(padding: EdgeInsets.only(right: 40)),
              Text('Mekele', style: TextStyle(fontSize: 18),)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      generalSubCounter();
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.blueAccent)),
                    child: const Center(
                        child: Text(
                          '-',
                          style: TextStyle(fontSize: 35, color: Colors.grey),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Text('$seats'),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      generalAddcounter();
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.blueAccent)),
                    child: const Center(
                        child: Text(
                          '+',
                          style: TextStyle(fontSize: 35, color: Colors.grey),
                        )),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: const [
                Text('Total Price :', style: TextStyle(fontSize: 18),),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('1200', style: TextStyle(fontSize: 18),),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: const [
                Text('Departure time :', style: TextStyle(fontSize: 18),),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text('12:00 AM, Monday Jan 22 ', style: TextStyle(fontSize: 18),),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: const [
                Text('Confirmation', style: TextStyle(fontSize: 18),),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(': Waiting', style: TextStyle(fontSize: 18, color: Colors.grey),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget confirmPaymentbutton() {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.06,
      width: width * 0.8,
      child: ElevatedButton(
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            backgroundColor:
                MaterialStateProperty.all(Colors.deepPurpleAccent.shade700),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ))),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const PaymentConfirmation()));
        },
        child: const Text(
          'Confirm',
          style: TextStyle(fontSize: 17),
        ),
      ),
    );
  }

}
