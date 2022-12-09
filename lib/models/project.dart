import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/models/url_tools.dart';

class Project {
  final String? title, description, image, url;
  final List<Widget>? links;
  final List<String>? libraries;

  const Project({
    this.title,
    this.description,
    this.image,
    this.url,
    this.links,
    this.libraries,
  });
}

List<Project> projects = [
  Project(
    title: "SSI TOOLS (en cours)",
    description:
        "Application collaborative dans le domaine de la sécurité incendie. Retrouvez toute la documentation technique, forum d’entre-aide, tuto, conseils et autres outils pour vous aider dans vos interventions",
    image: "https://i.imgur.com/2YQZQzS.png",
    url: "https://flutter.dev/",
    links: [
      _webIcon("https://flutter.dev/"),
      _androidIcon("https://flutter.dev/"),
      _iosIcon("https://flutter.dev/"),
    ],
  ),
  Project(
    title: "Mon Portfolio",
    description:
        "Mon portfolio, réalisé avec Flutter, est un site web responsive qui vous permet de découvrir mes projets et mes compétences.",
    image: "https://i.imgur.com/2YQZQzS.png",
    url: "https://dart.dev/",
    links: [
      _webIcon("https://dart.dev/"),
    ],
  ),
  Project(
      title: "Quiz des départements",
      description:
          "Petite application qui vous fera réviser vos départements de France métropôle. Mini projet servant à mettre en avant l’utilisation de 2 librairies",
      image: "https://i.imgur.com/2YQZQzS.png",
      url: "https://firebase.google.com/",
      links: [
        _webIcon("https://firebase.google.com/"),
      ],
      libraries: [
        "svg_path_parser",
        "touchable"
            "xml",
      ]),
];

Widget _webIcon(String url) {
  return InkWell(
      onTap: () => UrlTools.goToUrl(url),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(FontAwesomeIcons.globe),
      ));
}

Widget _androidIcon(String url) {
  return InkWell(
      onTap: () => UrlTools.goToUrl(url), child: const Icon(Icons.android));
}

Widget _iosIcon(String url) {
  return InkWell(
      onTap: () => UrlTools.goToUrl(url), child: const Icon(Icons.apple));
}
