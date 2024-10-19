import 'package:shenanigans/models/User.dart';

class Bet {
  final String title;                  // Title of the bet
  final double amount;                 // Amount of the bet
  final DateTime finishDate;           // Date and time when the bet finishes
  final List<InterestedUser> interestedUsers; // Users interested in the bet

  // Constructor
  Bet({
    required this.title,
    required this.amount,
    required this.finishDate,
    List<InterestedUser>? interestedUsers,
  }) : interestedUsers = interestedUsers ?? [];
}

class InterestedUser {
  final User user;                     // User interested in the bet
  final bool willHappen;               // User's position on whether the bet will happen

  // Constructor
  InterestedUser({
    required this.user,
    required this.willHappen,
  });
}
