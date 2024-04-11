class Project {
  final int id;
  final String title;
  final String description;
  final String imageUrl; // Added image URL field

  Project({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl, // Require imageUrl in the constructor
  });
}
