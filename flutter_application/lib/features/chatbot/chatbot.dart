class Chatbot {
  final String name;
  final String tone;
  String response;

  Chatbot({required this.name, required this.tone, required this.response});

  String getChatbotResponse(String userMessage) {
    if (userMessage.isEmpty) {
      return response;  
    }
  }
}

class Mona extends Chatbot {
  Mona()
      : super(
          name: "Mona",
          tone: "The Supportive Cheerleader",
          response: "Halo! Aku Mona, asisten keuangan yang selalu ada untuk memberi semangat dan dukungan!💖\n"
              "Siap mendengarkan cerita belanjamu hari ini! Ingat ya, sekali-kali memanjakan diri itu juga penting!😉",
        );
}

class Finny extends Chatbot {
  Finny()
      : super(
          name: "Finny",
          tone: "The Angry Mom",
          response: "Halo! Aku Finny, asisten keuangan yang selalu khawatir dengan pengeluaranmu!😪\n"
              "Ayo ceritakan apa yang kamu beli hari ini, jangan sampai boros!",
        );
}

class Vesto extends Chatbot {
  Vesto()
      : super(
          name: "Vesto",
          tone: "The Wise Mentor",
          response: "Halo! Aku Vesto, asisten kuangan yang siap membantu mencapai tujuan keuanganmu!😊\n"
              "Apa yang bisa aku bantu hari ini?",
        );
}
