import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: ThaiFontViewer(),
    );
  }
}

class ThaiFontViewer extends StatefulWidget {
  const ThaiFontViewer({Key? key}) : super(key: key);

  @override
  _ThaiFontViewerState createState() => _ThaiFontViewerState();
}

class _ThaiFontViewerState extends State<ThaiFontViewer> {
  String currentFont = "Charm";
  List<String> nameFont = [
    "Prompt",
    "Kanit",
    "Sarabun",
    "Chakra Petch",
    "Mitr",
    "Taviraj",
    "Bai Jamjuree",
    "Mali",
    "Pridi",
    "Niramit"
  ];

  Widget _buildButton(String font) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent),
        onPressed: () => _handleSetFont(font),
        child: Text("$font"),
      ),
    );
  }

  _handleSetFont(String font) {
    setState(() {
      currentFont = font;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("THAI FONT VIEWER"),
      ),
      body: Container(
        color: Colors.yellow.shade200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Center(
                    child: Text("การเดินทางขากลับคงจะเหงาน่าดู",
                        style: GoogleFonts.getFont(currentFont, fontSize: 70),
                        textAlign: TextAlign.center))),
            Column(children: [
              Text("Font: " + "$currentFont",style: TextStyle(fontWeight: FontWeight.bold),),
              Card(
                elevation: 5.0,
                child: Wrap(
                    alignment: WrapAlignment.center,
                    children: nameFont.map((e) => _buildButton(e)).toList()),
              )
            ])
          ],
        ),
      ),
    );
  }
}