import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: MyHomePage(),
      routes: {
        '/home': (context) => HomeScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://images.prestigeonline.com/wp-content/uploads/sites/6/2022/07/07170204/untitled-design-2022-06-22t184057-090-2.jpeg?tr=w-1920',
              width: 200, // Defina a largura desejada para a imagem
              height: 200, // Defina a altura desejada para a imagem
            ),
            Text(
              'Where Style Meets Comfort',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Join us to celebrate stylish, comfy footwear. Your path to extraordinary style begins here.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/home');
              },
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(fontSize: 20),
                padding: EdgeInsets.all(10.0),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Center(
                  child: Text('Ir para Home'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20.0),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.black],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              ),
            ),
            padding: EdgeInsets.only(left: 20.0, top: 30.0, right: 50.0, bottom: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.0),
                Text(
                  'Footwear Elegance Collection',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'Men Shoes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0), // Espaçamento entre o bloco de título e o carrossel

          // Carrossel
          CarouselSlider(
            items: [
              // Slide 0
              Container(
                height: 200.0, // Altura fixa do contêiner do carrossel
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey, // Cor da borda cinza
                    width: 2.0, // Largura da borda
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30.0), // Aumento de 10px no padding lateral
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start, // Alinhe à esquerda
                  children: [
                    Align(
                      alignment: Alignment.center, // Centraliza a imagem verticalmente
                      child: Image.network(
                        'https://static.zattini.com.br/produtos/tenis-new-balance-009-casual-masculino/60/D17-4719-060/D17-4719-060_zoom1.jpg?ts=1605645863&ims=544x',
                        width: 130.0, // Largura da imagem
                        height: 130.0, // Altura da imagem
                      ),
                    ),
                    SizedBox(height: 10.0), // Espaçamento adicional
                    InkWell( // Use InkWell para envolver o texto "Ultraboost Shoes" e adicionar uma ação onTap
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                            builder: (context) => BlankPage(),
                            ),
                        );
                      },
                      child: Text(
                        'Ultraboost Shoes',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold, // Texto em negrito
                          decoration: TextDecoration.underline, // Adicione um sublinhado para indicar que é clicável
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "Men's Running",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 10.0), // Espaçamento adicional
                    Text(
                      '\$200', // Texto "$200"
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold, // Texto em negrito
                      ),
                    ),
                  ],
                ),
              ),
              // Slide 1 com o título "Ultraboost Shoes"
              Container(
                height: 200.0, // Altura fixa do contêiner do carrossel
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey, // Cor da borda cinza
                    width: 2.0, // Largura da borda
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30.0), // Aumento de 10px no padding lateral
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start, // Alinhe à esquerda
                  children: [
                    Align(
                      alignment: Alignment.center, // Centraliza a imagem verticalmente
                      child: Image.network(
                        'https://static.zattini.com.br/produtos/tenis-new-balance-009-casual-masculino/60/D17-4719-060/D17-4719-060_zoom1.jpg?ts=1605645863&ims=544x',
                        width: 130.0, // Largura da imagem
                        height: 130.0, // Altura da imagem
                      ),
                    ),
                    SizedBox(height: 10.0), // Espaçamento adicional
                    InkWell( // Use InkWell para envolver o texto "Ultraboost Shoes" e adicionar uma ação onTap
                      onTap: () {
                        // Ação ao pressionar o título "Ultraboost Shoes"
                        // Navegue para uma nova aba ou classe aqui
                      },
                      child: Text(
                        'Ultraboost Shoes',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold, // Texto em negrito
                          decoration: TextDecoration.underline, // Adicione um sublinhado para indicar que é clicável
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "Men's Running",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 10.0), // Espaçamento adicional
                    Text(
                      '\$250', // Texto "$250"
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold, // Texto em negrito
                      ),
                    ),
                  ],
                ),
              ),
              // Adicione mais slides conforme necessário
            ],
            options: CarouselOptions(
              height: 350.0, // Altura fixa do carrossel
              aspectRatio: 16 / 9,
              viewportFraction: 0.7,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
          SizedBox(height: 20.0), // Espaçamento abaixo do carrossel
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Latest Shoes',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Ação para o botão "Show all"
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.grey[400],
                    elevation: 0.0,
                  ),
                  child: Text('Show all >'),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0), // Espaçamento entre o título e os containers
          // Containers pequenos alinhados horizontalmente
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Cor da borda cinza
                    width: 2.0, // Largura da borda
                  ),
                  borderRadius: BorderRadius.circular(20.0), // Raio de 20 pixels
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://static.zattini.com.br/produtos/tenis-new-balance-009-casual-masculino/60/D17-4719-060/D17-4719-060_zoom1.jpg?ts=1605645863&ims=544x'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(18.0), // Ajuste conforme necessário para manter o raio da imagem menor do que o raio do contêiner pai
                  ),
                ),
              ),
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Cor da borda cinza
                    width: 2.0, // Largura da borda
                  ),
                  borderRadius: BorderRadius.circular(20.0), // Raio de 20 pixels
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://static.zattini.com.br/produtos/tenis-new-balance-009-casual-masculino/60/D17-4719-060/D17-4719-060_zoom1.jpg?ts=1605645863&ims=544x'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(18.0), // Ajuste conforme necessário para manter o raio da imagem menor do que o raio do contêiner pai
                  ),
                ),
              ),
              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Cor da borda cinza
                    width: 2.0, // Largura da borda
                  ),
                  borderRadius: BorderRadius.circular(20.0), // Raio de 20 pixels
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://static.zattini.com.br/produtos/tenis-new-balance-009-casual-masculino/60/D17-4719-060/D17-4719-060_zoom1.jpg?ts=1605645863&ims=544x'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(18.0), // Ajuste conforme necessário para manter o raio da imagem menor do que o raio do contêiner pai
                  ),
                ),
              ),

              Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Cor da borda cinza
                    width: 2.0, // Largura da borda
                  ),
                  borderRadius: BorderRadius.circular(20.0), // Raio de 20 pixels
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://static.zattini.com.br/produtos/tenis-new-balance-009-casual-masculino/60/D17-4719-060/D17-4719-060_zoom1.jpg?ts=1605645863&ims=544x'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(18.0), // Ajuste conforme necessário para manter o raio da imagem menor do que o raio do contêiner pai
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class BlankPage extends StatefulWidget {
  @override
  _BlankPageState createState() => _BlankPageState();
}

class _BlankPageState extends State<BlankPage> {
  int selectedSizeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Define o fundo como branco
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.of(context).pop(); // Voltar à página anterior
          },
        ),
        title: Text(
          'Men Shoes',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
            onPressed: () {
              // Adicione ação para o ícone de três pontos aqui
            },
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2, // Dois guias: Descrição e Detalhes
        child: ListView(
          children: [
            Container(
              width: double.infinity, // Largura total da imagem
              height: 200.0, // Altura desejada para a imagem
              decoration: BoxDecoration(
                color: Colors.white, // Fundo branco
                borderRadius: BorderRadius.circular(10.0), // Borda arredondada
                image: DecorationImage(
                  image: NetworkImage(
                    'https://static.zattini.com.br/produtos/tenis-new-balance-009-casual-masculino/60/D17-4719-060/D17-4719-060_zoom1.jpg?ts=1605645863&ims=544x',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0), // Espaçamento interno do container abaixo da imagem
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ultraboost Shoes',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Men's Running",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 10.0), // Espaçamento entre o texto e as estrelas
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                ],
                              ),
                              SizedBox(width: 5.0), // Espaçamento entre as estrelas e o número
                              Text(
                                '5,0',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        '\$200',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0), // Espaçamento entre o título e o subtítulo
                  Text(
                    'Subtítulo',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20.0), // Espaçamento entre o subtítulo e o conteúdo
                  Text(
                    'Colors',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.0), // Espaçamento entre o texto e as bolinhas
                  Row(
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedSizeIndex == 0 ? Colors.black : Colors.white, // Cor da primeira bolinha
                          border: Border.all(color: Colors.black), // Borda preta
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedSizeIndex = 0;
                            });
                          },
                          child: Center(
                            child: Text(
                              '38',
                              style: TextStyle(
                                color: selectedSizeIndex == 0 ? Colors.white : Colors.black, // Cor do texto
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0), // Espaçamento entre as bolinhas
                      // Adicione outras bolinhas aqui com a mesma estrutura
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedSizeIndex == 1 ? Colors.black : Colors.white, // Cor da segunda bolinha
                          border: Border.all(color: Colors.black), // Borda preta
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedSizeIndex = 1;
                            });
                          },
                          child: Center(
                            child: Text(
                              '39',
                              style: TextStyle(
                                color: selectedSizeIndex == 1 ? Colors.white : Colors.black, // Cor do texto
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0), // Espaçamento entre as bolinhas
                      // Adicione outras bolinhas aqui com a mesma estrutura
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedSizeIndex == 2 ? Colors.black : Colors.white, // Cor da terceira bolinha
                          border: Border.all(color: Colors.black), // Borda preta
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedSizeIndex = 2;
                            });
                          },
                          child: Center(
                            child: Text(
                              '40',
                              style: TextStyle(
                                color: selectedSizeIndex == 2 ? Colors.white : Colors.black, // Cor do texto
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0), // Espaçamento entre as bolinhas
                      // Adicione outras bolinhas aqui com a mesma estrutura
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedSizeIndex == 3 ? Colors.black : Colors.white, // Cor da quarta bolinha
                          border: Border.all(color: Colors.black), // Borda preta
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedSizeIndex = 3;
                            });
                          },
                          child: Center(
                            child: Text(
                              '41',
                              style: TextStyle(
                                color: selectedSizeIndex == 3 ? Colors.white : Colors.black, // Cor do texto
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0), // Espaçamento entre as bolinhas
                      // Adicione outras bolinhas aqui com a mesma estrutura
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedSizeIndex == 4 ? Colors.black : Colors.white, // Cor da quinta bolinha
                          border: Border.all(color: Colors.black), // Borda preta
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedSizeIndex = 4;
                            });
                          },
                          child: Center(
                            child: Text(
                              '42',
                              style: TextStyle(
                                color: selectedSizeIndex == 4 ? Colors.white : Colors.black, // Cor do texto
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5.0), // Espaçamento entre as bolinhas
                      // Adicione outras bolinhas aqui com a mesma estrutura
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedSizeIndex == 5 ? Colors.black : Colors.white, // Cor da sexta bolinha
                          border: Border.all(color: Colors.black), // Borda preta
                        ),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectedSizeIndex = 5;
                            });
                          },
                          child: Center(
                            child: Text(
                              '43',
                              style: TextStyle(
                                color: selectedSizeIndex == 5 ? Colors.white : Colors.black, // Cor do texto
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0), // Espaçamento entre as bolinhas e a descrição
                  Row(
                    children: [
                      Text(
                        'Select a size',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        '(view size guide)',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0), // Espaçamento entre o título e a descrição
                  Text(
                    'Lorem Sed et mauris id metus auctor rhoncus. Suspendisse semper velit vel ligula bibendum, eget interdum dolor euismod. orem Sed et mauris id metus auctor rhoncus. Suspendisse semper velit vel ligula bibendum, eget interdumorem Sed et mauris id metus auctor rhoncus. Suspendisse semper velit vel ligula bibendum, eget interdum',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20.0), // Espaçamento entre a descrição e o botão
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Adicione ação do botão "Shop now" aqui
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // Cor de fundo do botão
                        onPrimary: Colors.white, // Cor do texto do botão
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0), // Borda circular
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          'Shop now',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
