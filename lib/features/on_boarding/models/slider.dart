import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Slider {
  final Color color;
  final String imageUrl;
  final String title;
  final String body;

  Slider(
      {required this.color,
      required this.imageUrl,
      required this.title,
      required this.body});
}

final sliderList = [
  Slider(
    color: Colors.white,
    imageUrl: 'assets/images/logo.png',
    title: "Gestion-des-employés".tr,
    body:
        "Permet de gérer les données personnelles, les titres des postes, les salaires, les performances, les présences et d'autres données pertinentes.",
  ),
  Slider(
    color: Colors.white,
    imageUrl: 'assets/images/logo.png',
    title: "Gestion-des-présences".tr,
    body:
        "Offre un système de gestion du temps et des présences qui vous permez de pointer leurs heures d'arrivée et du départ, de demander des congés et de suivre leurs heures de travail.",
  ),
  Slider(
    color: Colors.white,
    imageUrl: 'assets/images/logo.png',
    title: "Gestion-des-congés".tr,
    body:
        "Pour gérer au mieux vos demandes et les soldes de vos congés, y compris le suivi des congés annuels, des congés de maladie et d'autres types de congés.",
  )
];
