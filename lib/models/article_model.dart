import 'package:flutter/material.dart';

// class GuideCategory extends CategoryCard{
//   final String name;
//   final List subcategories;

//   GuideCategory({
//     required this.name,
//     required this.subcategories,
//   }) : super(title: CategoryCard.title, link: null);
// }

// List<GuideCategory> categories = [
//   category(
//     name: 'General Caregiving',
//     subcategories: [dailyHomeCare{}, 'Home Safety Adaptation', 'End-of-Life Preparation']
//   )

// ];

class CategoryCard {
  final String title;
  final Image link;

  CategoryCard({
    required this.title,
    required this.link,
  });
}



// mixin dailyHomeCare {
//   final String name;
//   final String icon;

//   dailyHomeCare({
//     required this.name,
//     required this.icon,
//   })
// }

class Article {
  final String id;
  final String title;
  final DateTime date;
  final String body;
  final String category;
  final String type; 
  Duration? duration;

  Article({
    required this.id,
    required this.title,
    required this.date,
    required this.body,
    required this.category, 
    required this.type, 
    this.duration,
  });
}

List<Article> articles = [
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