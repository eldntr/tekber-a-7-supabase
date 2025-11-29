import 'package:flutter/material.dart';
import 'chatbot.dart';  

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _controller = TextEditingController();
  String _response = "";  
  Chatbot _chatbot = Mona();  

  // Fungsi untuk memilih persona
  void _choosePersona(Chatbot chatbot) {
    setState(() {
      _chatbot = chatbot; 
      _response = _chatbot.getChatbotResponse(); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chat dengan ${_chatbot.name}")),
      body: Column(
        children: [
          // Pilihan persona
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _choosePersona(Mona()),  // Pilih Mona
                  child: Text("Mona"),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _choosePersona(Finny()),  // Pilih Finny
                  child: Text("Finny"),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _choosePersona(Vesto()),  // Pilih Vesto
                  child: Text("Vesto"),
                ),
              ],
            ),
          ),
          
          Expanded(child: SingleChildScrollView(child: Text(_response))),
          
          // Tambahkan balasan nanti
        ],
      ),
    );
  }
}
