import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  final List<Bet> bets = [
    Bet('Team A vs Team B', 'Won', 50.0),
    Bet('Team C vs Team D', 'Lost', 30.0),
    Bet('Team E vs Team F', 'Won', 20.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Betting History'),
      ),
      body: ListView.builder(
        itemCount: bets.length,
        itemBuilder: (context, index) {
          return BetCard(bet: bets[index]);
        },
      ),
    );
  }
}

class Bet {
  final String match;
  final String result;
  final double amount;

  Bet(this.match, this.result, this.amount);
}

class BetCard extends StatelessWidget {
  final Bet bet;

  BetCard({required this.bet});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              bet.match,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text('Result: ${bet.result}'),
            Text('Amount: \$${bet.amount.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}
