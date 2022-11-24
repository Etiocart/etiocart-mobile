import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<http.Response> fetchPhotos(http.Client client) async {
  return client.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
}