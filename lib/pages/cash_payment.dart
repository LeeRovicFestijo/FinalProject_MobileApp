import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/text_field.dart';

class CashPayment extends StatefulWidget {
  @override
  _CashPaymentState createState() => _CashPaymentState();
}

class _CashPaymentState extends State<CashPayment> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {

      final String name = nameController.text;
      final double amount = double.parse(amountController.text);
      final String address = addressController.text;

      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: const Text('Confirm Payment'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Name: $name"),
                Text("Amount: $amount"),
                Text("Address: $address"),
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
        title: Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              MyTextField(
                controller: nameController, 
                obsecureText: false, 
                hintText: 'Enter name',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10,),
              MyTextField(
                controller: amountController, 
                obsecureText: false, 
                hintText: 'Enter amount',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10,),
              MyTextField(
                controller: addressController, 
                obsecureText: false, 
                hintText: 'Enter address',
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Checkout',  style: TextStyle(color: Colors.orangeAccent),),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    amountController.dispose();
    addressController.dispose();
    super.dispose();
  }
}