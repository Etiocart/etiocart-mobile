import 'package:flutter/material.dart';

class CustomSearch extends SearchDelegate {
  List<String> fruitList = [];
  @override
  ThemeData appBarTheme(BuildContext context) {
    return super.appBarTheme(context).copyWith(
      appBarTheme: super.appBarTheme(context).appBarTheme.copyWith(
        elevation: 0.0,
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: IconButton(
          onPressed: () {
            close(context, null);
          },
          icon: Icon(Icons.arrow_back)),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];

    for (var fruit in fruitList) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(query);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(matchQuery[index]),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];

    for (var fruit in fruitList) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(query);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(matchQuery[index]),
          );
        });
  }
}