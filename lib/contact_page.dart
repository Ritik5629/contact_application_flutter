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
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                child: Text(
                  "Contact App",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),

              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Contacts"),
                // onTap: () {
                // Navigator.pop(context);
                // },
              ),

              ListTile(leading: Icon(Icons.settings), title: Text("Settings")),

              ListTile(
                leading: Icon(Icons.lock_clock),
                title: Text("Call History"),
              ),

              ListTile(
                leading: Icon(Icons.help),
                title: Text("Help & feedback "),
              ),

              SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "LOGOUT",
                    style: TextStyle(fontSize: 14, color: Colors.green),
                  ),
                ),
              ),
            ],
          ),
        ),

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

          actions: const [Icon(Icons.mic, color: Colors.white)],
        ),

        body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: Text(
                    contacts[index]["name"]![0],
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                title: Text(contacts[index]["name"]!),
                subtitle: Text(contacts[index]["phone"]!),
                trailing: const Icon(Icons.phone),
              ),
            );
          },
        ),
      ),
    );
  }
}
