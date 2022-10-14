class Project {
  final String? title, description, image, url;

  const Project({
    this.title,
    this.description,
    this.image,
    this.url,
  });
}

List<Project> projects = const [
  Project(
    title: "Flutter Web",
    description: "Flutter Web is a new way to build web apps with Flutter. "
        "It's based on the same codebase as Flutter mobile apps, "
        "so you can use the same tools, libraries, and APIs to build for both mobile and web.",
    image: "https://i.imgur.com/2YQZQzS.png",
    url: "https://flutter.dev/",
  ),
  Project(
    title: "Dart",
    description:
        "Dart is a client-optimized language for fast apps on any platform. "
        "Its goal is to offer the most productive programming language for multi-platform development, "
        "paired with a flexible execution runtime platform for app frameworks to target.",
    image: "https://i.imgur.com/2YQZQzS.png",
    url: "https://dart.dev/",
  ),
  Project(
    title: "Firebase",
    description:
        "Firebase is Google's mobile platform that helps you quickly develop high-quality apps and grow your business.",
    image: "https://i.imgur.com/2YQZQzS.png",
    url: "https://firebase.google.com/",
  ),
  Project(
    title: "Github",
    description:
        "GitHub is where people build software. More than 56 million people use GitHub to discover, fork, and contribute to over 100 million projects.",
    image: "https://i.imgur.com/2YQZQzS.png",
    url: "https://dart.dev/",
  ),
];
