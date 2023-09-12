class QoutesModel {
  bool? status;
  List<Quotes>? quotes;

  QoutesModel({this.status, this.quotes});

  QoutesModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['quotes'] != null) {
      quotes = <Quotes>[];
      json['quotes'].forEach((v) {
        quotes!.add(new Quotes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.quotes != null) {
      data['quotes'] = this.quotes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Quotes {
  int? id;
  String? qoute;
  String? author;
  String? createdAt;
  String? updatedAt;

  Quotes({this.id, this.qoute, this.author, this.createdAt, this.updatedAt});

  Quotes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    qoute = json['qoute'];
    author = json['author'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['qoute'] = this.qoute;
    data['author'] = this.author;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}