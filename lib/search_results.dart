import 'package:flutter/material.dart';

// Ecran détail des titres
class SearchResultsPage extends StatelessWidget {
  const SearchResultsPage({Key? key}) : super(key: key);

  get title => null;

  @override
  Widget build(BuildContext context) {
    List<SearchResultData> results = _generateRandomResults();

    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: results.length,
          itemBuilder: (BuildContext context, int position) {
            return SearchResultListItem(results[position]);
          },
        ),
      ),
    );
  }

  List<SearchResultData> _generateRandomResults() {
    return [
      SearchResultData(
        name: 'Titre1',
        text:
            ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim.',
        rating: 4.5,
        distance: 6.8,
      ),
    ];
  }
}

class SearchResultListItem extends StatelessWidget {
  final SearchResultData item;

  const SearchResultListItem(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 25.0,
          ),
          child: Column(
            children: [
              // 1ère ligne Titre
              Row(
                children: [
                  Expanded(
                    child: Text(
                      item.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    item.distance.toString(),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              //2ème ligne Rate
              Row(
                children: [
                  Text(
                    item.rating.toString(),
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              //3ème ligne Description
              Row(
                children: [
                  Expanded(
                    child: Text(
                      item.text,
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ), // 3ème
              //4ème ligne Images
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}

// Modèle
class SearchResultData {
  final String name;
  final String text;
  final double rating;
  final double distance;

  SearchResultData({
    required this.name,
    required this.text,
    required this.rating,
    required this.distance,
  });
}
