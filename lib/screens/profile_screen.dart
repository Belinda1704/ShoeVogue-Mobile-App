import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';
import '../widgets/profile_menu_item.dart';
import '../widgets/update_button.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8), // Light grey background
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // OnTap Return Button
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Icon(Icons.arrow_back_ios_new, size: 18),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Personal Details Header with "Change"
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Personal details", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  GestureDetector(
                    onTap: () {
                      // Implement change action
                    },
                    child: Text(
                      "change",
                      style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // Profile Card
              ProfileCard(),
              SizedBox(height: 20),

              // Profile Menu Cards
              ProfileMenuCard(title: "Orders", onTap: () {}),
              ProfileMenuCard(title: "Log Out", onTap: () {}),
              ProfileMenuCard(title: "Payment", onTap: () {}),
              ProfileMenuCard(title: "Help", onTap: () {}),

              Spacer(),

              // Update Button (Tappable)
              UpdateButton(onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
