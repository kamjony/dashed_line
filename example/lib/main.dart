import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DashedLine Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'DashedLine Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: const [
                    Text('Default vertical dash'),
                    SizedBox(height: 10),
                    DottedDashedLine(height: 100, width: 0, axis: Axis.vertical)
                  ],
                ),
                const Spacer(),
                Column(
                  children: const [
                    Text('Default horizontal dash'),
                    SizedBox(height: 10),
                    DottedDashedLine(height: 0, width: 100, axis: Axis.horizontal)
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text('Horizontal Dash with red color'),
            const SizedBox(height: 10),
            const DottedDashedLine(
              height: 0,
              width: 100,
              axis: Axis.horizontal,
              dashColor: Colors.red,
            ),
            const SizedBox(height: 30),
            const Text('Horizontal Dash with 4 stroke width'),
            const SizedBox(height: 10),
            const DottedDashedLine(
              height: 0,
              width: 100,
              axis: Axis.horizontal,
              dashColor: Colors.purple,
              strokeWidth: 4,
            ),
            const SizedBox(height: 30),
            const Text('Horizontal Dash with more dash space'),
            const SizedBox(height: 10),
            const DottedDashedLine(
              height: 0,
              width: 100,
              axis: Axis.horizontal,
              dashColor: Colors.green,
              dashSpace: 10,
            ),
            const SizedBox(height: 30),
            const Text('Horizontal Dash with more dash width'),
            const SizedBox(height: 10),
            const DottedDashedLine(
                height: 0,
                width: 100,
                axis: Axis.horizontal,
                dashColor: Colors.blue,
                dashWidth: 10,
                strokeWidth: 2),
            const SizedBox(height: 30),
            const Text('Vertical dash with more dash height'),
            const SizedBox(height: 10),
            const DottedDashedLine(
              height: 100,
              width: 0,
              axis: Axis.vertical,
              dashHeight: 10,
              dashColor: Colors.orange,
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
