import 'package:flutter/material.dart';

class DuaScreen extends StatefulWidget {
  final String? item;
  final String? duas;
  const DuaScreen({super.key, required this.item, required this.duas});

  @override
  State<DuaScreen> createState() => _DuaScreenState();
}

class _DuaScreenState extends State<DuaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Add a back button icon
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height:340,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.pink.shade200, Colors.pink.shade400],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "I am feeling ${widget.item}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Nexa',
                      fontSize: 18.0,
                    ),
                  ),
                  Icon(
                    Icons.format_quote,
                    color: Colors.white,
                    size: 36.0,
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    widget.duas!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
