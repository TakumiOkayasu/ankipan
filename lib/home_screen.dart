import 'package:ankipan/components/deck_card.dart';
import 'package:ankipan/components/long_press_floating_action_button.dart';
import 'package:ankipan/components/summary_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ankipan"),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              // プロフィール画面へ遷移など
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SummaryCard(),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: dummyDecks.length,
                itemBuilder: (context, index) {
                  final deck = dummyDecks[index];
                  return DeckCard(deck: deck);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const LongPressFloatingActionButton(),
    );
  }
}
