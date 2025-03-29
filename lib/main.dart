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
      title: 'Flutter Demo',
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
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Tree"),
          centerTitle: true,
      ),

      body: Column(
        children: [
          Image.asset(height: 300, width: 300, "assets/R.png"),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.share)),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              textAlign: TextAlign.justify,
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MySeason(url: "assets/tree1.jpg",),
              MySeason(url: "assets/springTree.jpg",)

            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.next_plan)),
    );
  }
}
class MySeason extends StatelessWidget {
  final url;
  // final text;

  const MySeason({required this.url,super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.bottomCenter,

        children: [
          Image.asset(
            height: 100,
            width: 100,

            fit: BoxFit.cover,

            "assets/tree1.jpg",

            // Text("Fall", style: TextStyle(color: Colors.red, fontSize: 25),)
          ),
        ],


    );
  }
}

