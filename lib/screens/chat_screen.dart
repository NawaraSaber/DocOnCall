import 'package:doc_on_call/models/chatusers_model.dart';
import 'package:doc_on_call/widgets/chatusers_list.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatUsersModel> chatUsersModel = [
    ChatUsersModel(
        name: "Esraa AbdelMonem",
        messageText: "How are you?",
        image: "assets/images/doc/doctor1.jpg",
        time: "Now"),
    ChatUsersModel(
        name: "Soliman Mohamed",
        messageText: "That's Great",
        image: "assets/images/doc/doctor5.jpg",
        time: "12:30 PM"),
    ChatUsersModel(
        name: "Essam Ahmed",
        messageText: "Hello",
        image: "assets/images/doc/doctor2.jpg",
        time: "10:00 AM"),
    ChatUsersModel(
        name: "Mohamed Ebid",
        messageText: "Your Welcome!",
        image: "assets/images/doc/doctor4.jpg",
        time: "4:30 PM"),
    ChatUsersModel(
        name: "Ashraf Mahrous",
        messageText: "That's Great",
        image: "assets/images/doc/doctor6.jpg",
        time: "6:15 PM"),
    ChatUsersModel(
        name: "Mohamed Ibrahim",
        messageText: "Hi",
        image: "assets/images/doc/doctor3.jpg",
        time: "8:25 PM"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              "Messages",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: TextStyle(color: Colors.grey.shade600),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade600,
                  size: 20,
                ),
                filled: true,
                fillColor: Colors.grey.shade100,
                contentPadding: const EdgeInsets.all(8),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.grey.shade100)),
              ),
            ),
          ),
          Column(
            children: [
              ListView.builder(
                itemCount: chatUsersModel.length,
                shrinkWrap: true,
                padding: const EdgeInsets.only(top: 16),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) {
                  return ChatUsersList(
                    name: chatUsersModel[i].name,
                    messageText: chatUsersModel[i].messageText,
                    image: chatUsersModel[i].image,
                    time: chatUsersModel[i].time,
                    isMessageRead: (i == 0 || i == 3) ? true : false,
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
