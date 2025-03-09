import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';
import '../widgets/profile_menu_item.dart';
import '../widgets/update_button.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8), // Light grey background
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "My profile",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Personal Details Header with "Change"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Personal details", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                GestureDetector(
                  onTap: () {
                    // Implement change action
                  },
                  child: const Text(
                    "change",
                    style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Profile Card
            ProfileCard(),
            const SizedBox(height: 20),

            // Profile Menu Cards
            ProfileMenuCard(title: "Orders", onTap: () {}),
            ProfileMenuCard(title: "Log Out", onTap: () {}),
            ProfileMenuCard(title: "Payment", onTap: () {}),
            ProfileMenuCard(title: "Help", onTap: () {}),

            const Spacer(),

            // Update Button (Tappable)
            UpdateButton(onPressed: () {}),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
