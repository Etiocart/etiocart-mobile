class Event_Ti {
  List<Tickets>? tickets;

  Event_Ti({this.tickets});

  Event_Ti.fromJson(Map<String, dynamic> json) {
    if (json['tickets'] != null) {
      tickets = <Tickets>[];
      json['tickets'].forEach((v) {
        tickets!.add(new Tickets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tickets != null) {
      data['tickets'] = this.tickets!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Tickets {
  int? id;
  int? priceBirr;
  int? priceCoin;
  int? reward;
  TicketType? ticketType;
  int? discount;
  int? amount;

  Tickets(
      {this.id,
      this.priceBirr,
      this.priceCoin,
      this.reward,
      this.ticketType,
      this.discount,
      this.amount});

  Tickets.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    priceBirr = json['price_birr'];
    priceCoin = json['price_coin'];
    reward = json['reward'];
    ticketType = json['ticket_type'] != null
        ? new TicketType.fromJson(json['ticket_type'])
        : null;
    discount = json['discount'];
    amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['price_birr'] = this.priceBirr;
    data['price_coin'] = this.priceCoin;
    data['reward'] = this.reward;
    if (this.ticketType != null) {
      data['ticket_type'] = this.ticketType!.toJson();
    }
    data['discount'] = this.discount;
    data['amount'] = this.amount;
    return data;
  }
}

class TicketType {
  int? id;
  String? name;

  TicketType({this.id, this.name});

  TicketType.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
