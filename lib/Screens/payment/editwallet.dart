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
        title: const Text('Wallet'),
      ),
      body: SafeArea(child: walletInfoEdit()),
    );
  }

  Widget walletInfoEdit() {
    return Column(
      children: const [
        Center(child: Text('Your Wallet Information', style: TextStyle(fontSize: 18),))
      ],
    );
  }
}
