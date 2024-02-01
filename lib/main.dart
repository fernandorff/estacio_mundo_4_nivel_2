import 'package:flutter/material.dart';

import 'components/button_section.dart';
import 'components/text_section.dart';
import 'components/title_section.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore Mundo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Explore Mundo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              height: 240,
              fit: BoxFit.cover,
            ),
            const TitleSection(
                title: 'Lagoa do Banana',
                subtitle: 'Caucaia, CE'
            ),
            ButtonSection(
              color: Theme.of(context).primaryColor,
              icons: const [
                Icons.call,
                Icons.near_me,
                Icons.share,
              ],
              labels: const [
                'CALL',
                'ROUTE',
                'SHARE'
              ],
            ),
            TextSection(
                'Lagoa do Banana é uma lagoa localizada no município de Caucaia, estado do Ceará. Fica em meio às dunas da Praia de Cumbuco, a cerca de 35 km de Fortaleza, e é um local excelente para quem quer passar um dia de descanso em família. As águas são tranquilas e visitante pode ficar nas mesas que ficam na beira da lagoa ou se aconchegar em uma das espreguiçadeiras que ficam dentro da água. Quem curte aventuras pode aproveitar as opções de lazer oferecidas ali mesmo no local, como os passeios de caiaque, de lanchas e banana-boat. Quem visita o local também pode ter a experiência de subir nas dunas e praticar o skibunda, esporte nativo que usa uma tábua de madeira para deslizar do topo da duna até a base, caindo direto na água da Lagoa.'
            ),
          ],
        ),
      ),
    );
  }
}