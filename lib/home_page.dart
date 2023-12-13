import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Offset distance = isPressed ? const Offset(10, 10) : const Offset(10, -5);
    double blur = isPressed ? 5.0 : 15.0;
    double depth = isPressed ? -10.0 : 10.0;
    return Scaffold(
        body: Center(
            child: GestureDetector(
              onTap: () => setState(() =>  isPressed = !isPressed),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 600),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                        blurRadius: blur,
                        offset: -distance,
                        color: Colors.black.withOpacity(0.5),
                        inset: true,
                      ),
                      BoxShadow(
                        blurRadius: blur,
                        offset: -distance,
                        color: Colors.grey[400]!,
                        inset: true,
                      ),
                      if(depth >= 0)
                        BoxShadow(
                          blurRadius: blur,
                          offset: -distance,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      if(depth >= 0)
                        BoxShadow(
                          blurRadius: blur,
                          offset: -distance,
                          color: Colors.black.withOpacity(0.5),
                        ),
                    ],
                  ),
                  child: Center(
                    child: Icon(Icons.apple_rounded,
                      size: 120,
                      color: isPressed ? Colors.black : Colors.grey[500],
                    ),
                  ),
                ),
              ),
            ),
          

        )
    );
  }
}
