class CategoryCard {
  final String title;
  final String link;

  CategoryCard({
    required this.title,
    required this.link,
  });
}

class GuideCategory{
  final String name;
  final List<CategoryCard> subcategories;

  GuideCategory({
    required this.name,
    required this.subcategories,
  });
}

List<GuideCategory> categories = [
  GuideCategory(
    name: 'General Caregiving',
    subcategories: [
      CategoryCard(title: 'Daily Home Care', link: '/'),
      CategoryCard(title: 'Home Safety Adaptation', link: '/'),
      CategoryCard(title: 'End-of-Life Preparation', link: '/'),
    ],
  ),
  GuideCategory(
    name: 'Caregiving for Specific Conditions',
    subcategories: [
      CategoryCard(title: 'Dementia Care', link: '/'),
      CategoryCard(title: 'Mental Health Care', link: '/'),
      CategoryCard(title: 'Cancer Care', link: '/'),
      CategoryCard(title: 'Stroke Recovery', link: '/'),
      CategoryCard(title: 'Bedbound Care', link: '/'),
      CategoryCard(title: 'Mobility Aid Care', link: '/'),
    ],
  ),
  GuideCategory(
    name: 'Self-Care',
    subcategories: [
      CategoryCard(title: 'Carrying for Myself', link: '/'),
    ],
  ),
];