import 'package:flutter/material.dart';
class EditWallet extends StatefulWidget {
  const EditWallet({Key? key}) : super(key: key);

  @override
  State<EditWallet> createState() => _EditWalletState();
}

class _EditWalletState extends State<EditWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.teal.shade800,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('wallet'),
      ),
      body: WalletInfoEdit(),
    );
  }

  Widget WalletInfoEdit(){
    return Container(

    );
  }
}
