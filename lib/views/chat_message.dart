import 'package:flutter/cupertino.dart';
import 'package:hci_layout/views/message_page.dart';

class ChatMessage {
  String message;
  MessageType type;
  ChatMessage({required this.message, required this.type});
}
