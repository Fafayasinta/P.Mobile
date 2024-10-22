import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Faycake')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView( // Allows scrolling if content overflows
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align items to the start
            children: [
              _buildContentSection(),
              SizedBox(height: 20), // Spacing before footer
              _buildFooter(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContentSection() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300), // Border for the section
        borderRadius: BorderRadius.circular(10), // Rounded corners
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Faycake is your go-to cake shop, offering a wide variety of cakes for all occasions!',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 20), // Spacing between text and contact info
          Text(
            'Contact Us:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Phone: (123) 456-7890', // Example phone number
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Email: contact@faycake.com', // Example email
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 20), // Spacing before the address
          Text(
            'Our Address:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Jl. Soekarno Hatta No.9, Jatimulyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141', // Example address
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.pink.shade100, // Background color for footer
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Text(
          '© 2024 Faycake. All rights reserved.',
          style: TextStyle(fontSize: 16, color: Colors.black54),
        ),
      ),
    );
  }
}
