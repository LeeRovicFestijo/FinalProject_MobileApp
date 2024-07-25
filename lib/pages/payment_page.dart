import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/payment_method.dart';
import 'package:flutter_application_1/pages/Cash_payment.dart';
import 'package:flutter_application_1/pages/card_payment.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Methods'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            PaymentMethod(
              icon: (Icons.payments_sharp), 
              title: 'Cash', 
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => CashPayment()));
              }
            ),
            PaymentMethod(
              icon: (Icons.payment_outlined), 
              title: 'Card', 
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => CardPayment()));
              }
            ),
          ],
        ),
      )
    );
  }
}