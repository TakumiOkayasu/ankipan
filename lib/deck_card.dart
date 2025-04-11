import 'package:flutter/material.dart';

class Deck {
  final String title;
  final int reviewedToday;
  final int totalCards;

  Deck(
      {required this.title,
      required this.reviewedToday,
      required this.totalCards});
}

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
        subtitle: Text("今日: ${deck.reviewedToday} / 全体: ${deck.totalCards}枚"),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.pushNamed(context, '/deckDetail', arguments: deck);
        },
      ),
    );
  }
}
