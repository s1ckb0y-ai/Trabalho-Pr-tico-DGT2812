import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Colors.blue;

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Praia de Fernando de Noronha',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Text(
                  'Pernambuco, Brasil',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const SizedBox(width: 4),
          const Text('4.9'),
        ],
      ),
    );

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonColumn(primaryColor, Icons.call, 'CONTATO'),
        buildButtonColumn(primaryColor, Icons.near_me, 'ROTA'),
        buildButtonColumn(primaryColor, Icons.share, 'COMPARTILHAR'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'A agência Explore Mundo oferece experiências inesquecíveis em destinos paradisíacos. '
        'Fernando de Noronha é um dos lugares mais procurados pelos clientes, com águas cristalinas, '
        'paisagens deslumbrantes e excelente estrutura turística. '
        'Neste aplicativo, os usuários podem visualizar destinos, consultar pacotes de viagem, '
        'entrar em contato com a equipe, verificar informações de localização e compartilhar suas opções favoritas.',
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    Widget packageListSection = Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: const [
          ListTile(
            leading: Icon(Icons.flight_takeoff, color: Colors.blue),
            title: Text('Pacote Econômico'),
            subtitle: Text('3 dias e 2 noites - a partir de R\$ 1.999'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.beach_access, color: Colors.orange),
            title: Text('Pacote Família'),
            subtitle: Text('5 dias e 4 noites - a partir de R\$ 3.499'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.star, color: Colors.red),
            title: Text('Pacote Premium'),
            subtitle: Text('7 dias e 6 noites - a partir de R\$ 5.999'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );

    Widget searchSection = Container(
      padding: const EdgeInsets.all(16),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Pesquisar destinos ou pacotes',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Explore Mundo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Explore Mundo'),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset(
                  'images/lake.jpg',
                  width: 600,
                  height: 240,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  color: Colors.black.withOpacity(0.4),
                  child: const Text(
                    'Descubra destinos incríveis',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            searchSection,
            titleSection,
            buttonSection,
            textSection,
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Pacotes de viagem',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            packageListSection,
          ],
        ),
      ),
    );
  }
}