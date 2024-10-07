 import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum 4',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Align(
            alignment: Alignment.center,
            child: Text(
              'Rekomendasi Wisata',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              const Center(
                child: Text(
                  "Danau Plitvice",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Image.network(
                'https://media.istockphoto.com/id/601146910/id/foto/taman-nasional-plitvice-lakes.jpg?s=612x612&w=0&k=20&c=P-XzIkFL6YFdLe5MEiBvDnjT2XJeKhxsFl0EfG54OTQ=',
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: const Text(
                  'Danau Plitvice adalah permata alam yang tersembunyi di Kroasia, di mana keindahan liar bertemu dengan ketenangan sempurna. Terletak di kawasan Taman Nasional Plitvice, danau-danau ini terdiri dari 16 danau berjenjang yang saling terhubung melalui rangkaian air terjun menakjubkan. Setiap danau memiliki karakteristik unik dengan warna air yang berubah-ubah, mulai dari pirus cerah hingga hijau zamrud, tergantung pada cahaya matahari, mineral, dan organisme yang hidup di dalamnya.Suara gemericik air yang jatuh dari tebing-tebing batu kapur menciptakan suasana yang menenangkan, sementara hutan pinus dan pohon-pohon beech yang rimbun menjadi rumah bagi berbagai flora dan fauna langka.',
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Kunjungi Sekarang",
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ));
  }
}