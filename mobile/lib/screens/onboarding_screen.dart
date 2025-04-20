import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../models/onboarding_page.dart';

class OnboardingScreen extends StatelessWidget {
  final List<OnboardingPage> pages = [
    OnboardingPage(
      title: "Bem-vindo ao Gym Buddy!",
      body: "O seu parceiro de treino!",
    ),
    OnboardingPage(
      title: "Funcionalidade!",
      body: "Explore e descubra exercicios.",
    ),
    OnboardingPage(
      title: "Organização!",
      body: "Gerencie o seu Plano de treino.",
    ),
    OnboardingPage(
      title: "Comunidade!",
      body: "Adcione e interaja com amigos.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: _buildPages(),
        showSkipButton: true,
        skip: const Text("Pular", style: TextStyle(color: Colors.grey)),
        next: const Icon(Icons.arrow_forward, color: Colors.blue),
        done: const Text(
          "Continuar",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        onDone: () => _onDone(context),
        dotsDecorator: _buildDotsDecorator(),
        globalBackgroundColor: Colors.white,
        freeze: false,
      ),
    );
  }

  DotsDecorator _buildDotsDecorator() {
    return DotsDecorator(
      size: const Size(10.0, 10.0), // Tamanho dos dots inativos
      activeSize: const Size(22.0, 10.0), // Tamanho do dot ativo
      activeColor: Colors.blue, // Cor do dot ativo
      color: Colors.grey, // Cor dos dots inativos
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0), // Forma do dot ativo
      ),
    );
  }

  List<PageViewModel> _buildPages() {
    return pages.map((page) {
      return PageViewModel(
        title: page.title,
        body: page.body,
        decoration: PageDecoration(
          titleTextStyle: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
          bodyTextStyle: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
          pageColor: Colors.white,
          imagePadding:
              EdgeInsets.zero, // Espaçamento para quando houver imagem
        ),
      );
    }).toList();
  }

  /// Navega para a tela principal quando o onboarding é concluído
  void _onDone(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/home');
  }
}
