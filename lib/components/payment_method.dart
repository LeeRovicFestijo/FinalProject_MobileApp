import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  PaymentMethod({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(icon, color: Colors.orangeAccent),
              SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent[800],
                  ),
                ),
              ),
              const Icon(Icons.arrow_forward, color: Colors.orangeAccent),
            ],
          ),
        ),
      ),
    );
  }
}