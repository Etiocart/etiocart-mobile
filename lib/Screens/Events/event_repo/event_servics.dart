// import 'dart:html';

// import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'event_model.dart';

class GetAllServics {
  // final resultNotifier = ValueNotifier<RequestState>(RequestInitial());

  Future<List<Events>> fetchItems() async {
    print("helllllllllllllllllllllllll");
    List<Events> items = [];
    String token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwczovL2hhc3VyYS5pby9qd3QvY2xhaW1zIjp7IngtaGFzdXJhLWFsbG93ZWQtcm9sZXMiOlsib3JnYW5pemF0aW9uLWFkbWluIl0sIngtaGFzdXJhLWRlZmF1bHQtcm9sZSI6Im9yZ2FuaXphdGlvbi1hZG1pbiIsIngtaGFzdXJhLXJvbGUiOiJvcmdhbml6YXRpb24tYWRtaW4iLCJ4LWhhc3VyYS11c2VyLWlkIjoiMSIsIngtaGFzdXJhLXVzZXItZW1haWwiOiJhZG1pbkBhZG1pbi5jb20ifSwiaWF0IjoxNjU2MjMwODI4fQ.zUfOMptIMLFfHi_Nfzq1j8VW-YfgX3nihEFyIx_UGbM";

    final Uri url = Uri.parse("http://167.71.12.36:5000/getEvents");
    print(url);
    final response = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });
    print(response.statusCode);

    if (response.statusCode == 200) {
      final jsonMap = json.decode(response.body);
      print(jsonMap);

      for (var myData in jsonMap['events']) {
        if (myData != null) {
          Events item = Events.fromJson(myData);
          items.add(item);
        }
      }
    }
    return items;
  }
}
