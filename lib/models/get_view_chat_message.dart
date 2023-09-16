class ViewAllChatMessageModel {
  bool? status;
  List<Message>? message;

  ViewAllChatMessageModel({this.status, this.message});

  ViewAllChatMessageModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['message'] != null) {
      message = <Message>[];
      json['message'].forEach((v) {
        message!.add(new Message.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.message != null) {
      data['message'] = this.message!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Message {
  int? id;
  int? chatId;
  String? content;
  Null? status;
  String? senderName;
  String? receiverName;
  String? createdAt;
  String? updatedAt;

  Message(
      {this.id,
        this.chatId,
        this.content,
        this.status,
        this.senderName,
        this.receiverName,
        this.createdAt,
        this.updatedAt});

  Message.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    chatId = json['chat_id'];
    content = json['content'];
    status = json['status'];
    senderName = json['sender_name'];
    receiverName = json['receiver_name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['chat_id'] = this.chatId;
    data['content'] = this.content;
    data['status'] = this.status;
    data['sender_name'] = this.senderName;
    data['receiver_name'] = this.receiverName;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}