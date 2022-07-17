import 'package:flutter/material.dart';

class showSearch_practice extends StatefulWidget {
  const showSearch_practice({Key? key}) : super(key: key);

  @override
  State<showSearch_practice> createState() => _showSearch_practiceState();
}

class _showSearch_practiceState extends State<showSearch_practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShowSearch"),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(),
                );
              },
              icon: Icon(Icons.search_rounded)),
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'apple',
    'banana',
    'carrot',
    'dear',
    'elephant',
    'feer',
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
        //searchBar를 닫는 역할
      },
    );
  }

  @override
  Widget buildResult(BuildContext context) {
    List<String> matchQuery = [];
    for (var contents in searchTerms) {
      if (contents.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(contents);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }
}
