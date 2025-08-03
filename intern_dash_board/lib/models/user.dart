import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String name;
  final String email;
  final String referralCode;
  final double totalDonations;
  final int rank;
  final List<String> rewards;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.referralCode,
    required this.totalDonations,
    required this.rank,
    required this.rewards,
  });

  @override
  List<Object> get props => [
    id,
    name,
    email,
    referralCode,
    totalDonations,
    rank,
    rewards,
  ];
}

class LeaderboardEntry extends Equatable {
  final String name;
  final double donations;
  final int rank;

  const LeaderboardEntry({
    required this.name,
    required this.donations,
    required this.rank,
  });

  @override
  List<Object> get props => [name, donations, rank];
}

class Announcement extends Equatable {
  final String id;
  final String title;
  final String content;
  final DateTime date;
  final bool isImportant;

  const Announcement({
    required this.id,
    required this.title,
    required this.content,
    required this.date,
    required this.isImportant,
  });

  @override
  List<Object> get props => [id, title, content, date, isImportant];
}
