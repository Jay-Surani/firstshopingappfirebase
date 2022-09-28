import 'package:flutter/material.dart';

class Search extends SearchDelegate {
  List<String> data = [
    "Fruit",
    "Vegitable",
    "mobile",
    "Refrigerator",
    "Cloth",
    "Shoe",
    "Kitchen",
    "Sport",

    "fruit",
    "vegitable",
    "mobile",
    "refrigerator",
    "cloth",
    "shoe",
    "kitchen",
    "sport",

    "Fruits",
    "Vegitables",
    "mobiles",
    "Refrigerators",
    "Cloths",
    "Shoes",
    "Kitchens",
    "Sportss",

    "fruits",
    "vegitables",
    "mobiles",
    "refrigerators",
    "cloths",
    "shoes",
    "kitchens",
    "sportss",

  ];

  List<String> recentSearch = [
    ""
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context));
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query != null && data.contains(query.toLowerCase())) {
      return ListTile(
        title: Text(query),
        onTap: () {},
      );
    } else if (query == "") {
      return Text("");
    } else {
      return ListTile(
        title: Center(child: Text("No results found")),
        onTap: () {},
      );
    }
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
        itemCount: recentSearch.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recentSearch[index]),
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
            onTap: () {},
          );
        });
  }
}
