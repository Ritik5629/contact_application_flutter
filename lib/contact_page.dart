import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  final List<Map<String, String>> contacts = const [
    {"name": "Ritik Rana", "phone": "858047XXXX"},
    {"name": "Sunil Nagarkoti", "phone": "780998XXXX"},
    {"name": "Ankush Sharma", "phone": "987654XXXX"},
    {"name": "Dikshant", "phone": "912345XXXX"},
    {"name": "Aman Verma", "phone": "701234XXXX"},
    {"name": "Rohit Kumar", "phone": "889977XXXX"},
    {"name": "Neha Sharma", "phone": "998877XXXX"},
    {"name": "Pooja Thakur", "phone": "776655XXXX"},
    {"name": "Anshul Kumar", "phone": "779955XXXX"},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(),

    appBar: AppBar(
      backgroundColor: Colors.deepPurple,

      title: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white, 
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          cursorColor: Colors.deepPurple,
          decoration: const InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
            icon: Icon(Icons.search, color: Colors.grey),
          ),
          style: const TextStyle(color: Colors.black),
        ),
      ),

      actions: const [
        Icon(Icons.mic, color: Colors.white),
      ],
    ),


        body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.deepPurple,
                child: Text(contacts[index]["name"]![0], style: TextStyle(color: Colors.white)),
              ),

              title: Text(contacts[index]["name"]!),
              subtitle: Text(contacts[index]["phone"]!),
              trailing: const Icon(Icons.phone),
            );
          },
        ),
      ),
    );
  }
}
