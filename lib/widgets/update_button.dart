import 'package:flutter/material.dart';

class UpdateButton extends StatelessWidget {
  final VoidCallback onPressed;

  UpdateButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange, // Matches reference image
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          minimumSize: Size(double.infinity, 50),
        ),
        onPressed: onPressed,
        child: Text("Update", style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
