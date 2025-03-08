import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedPaymentMethod = "Card";
  String selectedDeliveryMethod = "Door delivery";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Checkout",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Payment",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text("Payment method", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            _buildPaymentMethodCard(),
            const SizedBox(height: 20),
            const Text("Delivery method.", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            _buildDeliveryMethodCard(),
            const Spacer(),
            _buildTotalAndButton(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentMethodCard() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 1),
        ],
      ),
      child: Column(
        children: [
          _buildRadioTile("Card", Icons.credit_card, Colors.orange),
          const Divider(),
          _buildRadioTile("Bank account", Icons.account_balance, Colors.purple),
        ],
      ),
    );
  }

  Widget _buildDeliveryMethodCard() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 1),
        ],
      ),
      child: Column(
        children: [
          _buildRadioTile("Door delivery", Icons.local_shipping, Colors.orange),
          const Divider(),
          _buildRadioTile("Pick up", Icons.store, Colors.black54),
        ],
      ),
    );
  }

  Widget _buildRadioTile(String title, IconData icon, Color iconColor) {
    return RadioListTile(
      value: title,
      groupValue: title.contains("Card") || title.contains("Bank") ? selectedPaymentMethod : selectedDeliveryMethod,
      onChanged: (value) {
        setState(() {
          if (title.contains("Card") || title.contains("Bank")) {
            selectedPaymentMethod = value as String;
          } else {
            selectedDeliveryMethod = value as String;
          }
        });
      },
      title: Row(
        children: [
          Icon(icon, color: iconColor),
          const SizedBox(width: 10),
          Text(title, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  Widget _buildTotalAndButton() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Total",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 5),
        const Text(
          "23,000",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(vertical: 15),
            ),
            onPressed: () {},
            child: const Text(
              "Proceed to payment",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
