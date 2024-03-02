import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NamePage(
        myName: MyName(name: 'Yaroslava', surname: 'Karpenko'),
      ),
    );
  }
}


class NamePage extends StatefulWidget {
  final MyName myName;
  const NamePage({super.key, required this.myName});

  @override
  State<NamePage> createState() => _NamePageState();
}


class _NamePageState extends State<NamePage> {
  bool _isLiked = false;
  bool _showGif = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Greeting App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 207, 0, 162),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${widget.myName.name} ${widget.myName.surname}',
                  style: const TextStyle(fontSize: 20),
                ),
                IconButton(
                  icon: Icon(
                    _isLiked ? Icons.favorite : Icons.favorite_border,
                    color: _isLiked ? const Color.fromARGB(255, 207, 0, 162) : null,
                  ),
                  onPressed: () {
                    setState(() {
                      _isLiked = !_isLiked;
                      _showGif = _isLiked;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20), 
            if (_showGif)
              Image.asset(
                'assets/ken.gif',
                width: 300,
                height: 300,
              ),
          ],
        ),
      ),
    );
  }
}


class MyName {
  late String _name;
  late String _surname;

  MyName({required String name, required String surname}) {
    _name = name;
    _surname = surname;
  }

  String get name => _name;
  set name(String name) => _name = name;

  String get surname => _surname;
  set surname(String surname) => _surname = surname;
}


// class HomePage extends StatelessWidget {
//   final User user;

//   const HomePage({super.key, required this.user});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Greeting App', 
//         style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Color.fromARGB(255, 105, 4, 163),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Text('${user.name} ${user.surname}',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), 
//     );
//   }
// }










