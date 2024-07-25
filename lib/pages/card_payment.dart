import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CardPayment extends StatefulWidget {
  const CardPayment({super.key});

  @override
  State<CardPayment> createState() => _CardPaymentState();
}

class _CardPaymentState extends State<CardPayment> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  
  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: const Text('Confirm Payment'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Card Number: $cardNumber"),
                Text("Expiry Date: $expiryDate"),
                Text("Card Holder Name: $cardHolderName"),
                Text("CVV: $cvvCode"),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed:() => Navigator.pop(context), 
              child: const Text("Cancel")
            ),
            TextButton(
              onPressed:() => Navigator.pop(context), 
              child: const Text("Yes")
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: cardNumber, 
              expiryDate: expiryDate, 
              cardHolderName: cardHolderName, 
              cvvCode: cvvCode, 
              showBackView: isCvvFocused, 
              onCreditCardWidgetChange: (p0) {},
            ),
        
            CreditCardForm(
              cardNumber: cardNumber, 
              expiryDate: expiryDate, 
              cardHolderName: cardHolderName, 
              cvvCode: cvvCode, 
              onCreditCardModelChange: (data) {
                setState(() {
                  cardNumber = data.cardNumber;
                  expiryDate = data.expiryDate;
                  cardHolderName = data.cardHolderName;
                  cvvCode = data.cvvCode;
                });
              }, 
              formKey: formKey,
            ),
        
            const SizedBox(height: 20,),
        
            MyButton(
              text: "Checkout", 
              onTap: userTappedPay,
            )
          ],
        ),
      ),
    );
  }
}