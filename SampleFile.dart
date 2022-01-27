import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final ThemeData myTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
      .copyWith(secondary: Colors.purple[300]),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var text = const Text(
      'Welcome to ----- Scanner',
      softWrap: true,
      style: TextStyle(
        color: Color(0xFF0D47A1),
        fontSize: 55,
        fontWeight: FontWeight.bold,
      ),
    );
    void _getStarted() {
      Navigator.push(context, MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(title: Text('My Page')),
            body: Center(
              child: TextButton(
                child: const Text('POP'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          );
        },
      ));
    }

    return MaterialApp(
      theme: myTheme,
      debugShowCheckedModeBanner: false,
      title: 'Hello',
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('Hello World'),
          elevation: 0.0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text,
            const SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(16.0),
                      primary: Colors.white,
                      textStyle: const TextStyle(fontSize: 28),
                    ),
                    onPressed: _getStarted,
                    child: const Text('Get Started >>'),
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
