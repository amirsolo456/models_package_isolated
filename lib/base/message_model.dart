

import 'package:equatable/equatable.dart';

class MessageModel extends Equatable {
  final String id;
  final String text;
  final bool isUser;
  final DateTime timestamp;
  final MessageStatus status;

  const MessageModel({
    required this.id,
    required this.text,
    required this.isUser,
    required this.timestamp,
    this.status = MessageStatus.sent,
  });

  MessageModel copyWith({
    String? id,
    String? text,
    bool? isUser,
    DateTime? timestamp,
    MessageStatus? status,
  }) {
    return MessageModel(
      id: id ?? this.id,
      text: text ?? this.text,
      isUser: isUser ?? this.isUser,
      timestamp: timestamp ?? this.timestamp,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [id, text, isUser, timestamp, status];
}

enum MessageStatus {
  sending,
  sent,
  delivered,
  read,
  error,
}