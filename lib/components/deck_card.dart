import 'package:ankipan/deck.dart';
import 'package:flutter/material.dart';

final dummyDecks = [
  Deck(title: "英単語", reviewedToday: 10, totalCards: 100),
  Deck(title: "歴史年号", reviewedToday: 2, totalCards: 50),
];

class DeckCard extends StatelessWidget {
  final Deck deck;
  const DeckCard({super.key, required this.deck});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(deck.title),
        subtitle: Text("済: ${deck.reviewedToday} / 全体: ${deck.totalCards}枚"),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.pushNamed(context, '/deckDetail', arguments: deck);
        },
      ),
    );
  }
}
