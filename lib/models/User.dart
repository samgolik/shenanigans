import 'package:shenanigans/models/bet.dart';

class User {
  // Properties
  final String id;              // Unique identifier for the user
  final String name;            // User's name
  double balance;               // User's current balance for betting
  List<Bet> bets;               // List of bets the user is involved in

  // Constructor
  User({
    required this.id,
    required this.name,
    this.balance = 100.0,
    List<Bet>? bets,
  }) : bets = bets ?? [];

  // Method to place a bet
  void placeBet(Bet bet) {
    if (balance >= bet.amount) {
      bets.add(bet);
      balance -= bet.amount; // Deduct the bet amount from balance
      print('Bet placed: ${bet.title}');
    } else {
      print('Insufficient balance to place this bet.');
    }
  }

  void betWon(Bet bet){
      balance
  }

  void betLost(Bet bet){

  }

  // Method to add funds
  void addFunds(double amount) {
    balance += amount;
    print('Funds added: \$${amount}. New balance: \$${balance}.');
  }

  // Method to display user info
  String displayInfo() {
    return 'User ID: $id\nName: $name\nBalance: \$${balance.toStringAsFixed(2)}';
  }
}
