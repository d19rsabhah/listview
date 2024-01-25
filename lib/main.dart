import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var arr_names = [
    'Keshava',
    'Narayana',
    'Madhava',
    'Govinda',
    'Vishnavaya',
    'Madhusudanaya',
    'Trivikramaya',
    'Vamanaya',
    'Sridharaya',
    'Hrisikesaya',
    'Padmanavaya',
    'Damodaraye',
    'Vasudevaya'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Text(
                  arr_names[index],
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                );
              },
              itemCount: arr_names.length,
              itemExtent: 100,
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Text(
                      arr_names[index],
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      arr_names[index],
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      arr_names[index],
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ],
                );
              },
              itemCount: arr_names.length,
              separatorBuilder: (context, index) {
                return Divider(
                  height: 50,
                  thickness: 3,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
