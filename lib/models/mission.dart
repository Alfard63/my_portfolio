class Mission {
  final String? name, entreprise, job, text, image;

  const Mission({
    this.name,
    this.entreprise,
    this.job,
    this.text,
    this.image,
  });
}

final List<Mission> recommendations = [
  const Mission(
    name: "Corentin Havouis",
    entreprise: "Digital Enjeux Sport",
    job: "Développeur Flutter",
    text:
        "Développement Front End d'une application mobile de suivi et de programme individuel pour sportif, selon les données de la maquette: Développement de plusieurs pages :  onboarding , dashboard, profil, abonnement et factures, questionnaire interactif pour la mise à jour du profil, questionnaire dynamique pour créer le programme d’entraînement personnalisé, affichage d'article avec contenu dynamique",
    image: "https://i.imgur.com/2YQZQzS.png",
  ),
];
