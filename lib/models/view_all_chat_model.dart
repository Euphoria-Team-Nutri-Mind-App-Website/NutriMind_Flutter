class ViewAllChatModel {
  bool? status;
  List<Chat>? chat;

  ViewAllChatModel({this.status, this.chat});

  ViewAllChatModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['chat'] != null) {
      chat = <Chat>[];
      json['chat'].forEach((v) {
        chat!.add(new Chat.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.chat != null) {
      data['chat'] = this.chat!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Chat {
  int? id;
  String? senderName;
  String? receiverName;
  Null? lastSeen;
  String? createdAt;
  String? updatedAt;

  Chat(
      {this.id,
        this.senderName,
        this.receiverName,
        this.lastSeen,
        this.createdAt,
        this.updatedAt});

  Chat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    senderName = json['sender_name'];
    receiverName = json['receiver_name'];
    lastSeen = json['last_seen'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['sender_name'] = this.senderName;
    data['receiver_name'] = this.receiverName;
    data['last_seen'] = this.lastSeen;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}