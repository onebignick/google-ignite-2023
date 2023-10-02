import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final DateTime date;
  final String body;
  final String category;
  final String type;
  final Duration duration;

  const Article({
    required this.id,
    required this.title,
    required this.date,
    required this.body,
    required this.category,
    required this.type,
    required this.duration,
  });

  static List<Article> articles = [
      Article(
    id: '1',
    title: 'All About Dementia',
    date: DateTime(2023, 3, 8),
    body: "What Is Dementia ...",
    category: 'Dementia Care',
    type: 'read',
    duration: const Duration(minutes: 5)
  ),
  Article(
    id: '2',
    title: 'Diagnosis and Treatment',
    date: DateTime(2023, 3, 8),
    body: "What Is Dementia ...",
    category: 'Dementia Care',
    type: 'read',
    duration: const Duration(minutes: 3),
  ),
  Article(
    id: '3',
    title: 'Tips and Tools',
    date: DateTime(2023, 3, 8),
    body: "What Is Dementia ...",
    category: 'Dementia Care',
    type: 'read',
    duration: const Duration(minutes: 3),
  ),
  Article(
    id: '4',
    title: 'Network of Care and Support',
    date: DateTime(2023, 3, 8),
    body: "What Is Dementia ...",
    category: 'Dementia Care',
    type: 'read',
    duration: const Duration(minutes: 3),
  ),
  Article(
    id: '5',
    title: 'Support for Caregivers',
    date: DateTime(2023, 3, 8),
    body: "What Is Dementia ...",
    category: 'Dementia Care',
    type: 'read',
    duration: const Duration(minutes: 3),
  ),
  Article(
    id: '6',
    title: '360 Degree Virtual Reality Dementia-Friendly HDB Home Design Guide',
    date: DateTime(2023, 3, 8),
    body: "What Is Dementia ...",
    category: 'Dementia Care',
    type: 'watch',
    duration: const Duration(minutes: 4, seconds: 17),
  )
  ];

  @override
  List<Object?> get props => [
    id,
    title,
    date,
    body,
    category,
    type,
    duration,
    ];
}