import "package:flutter/material.dart";

class Transistor3DView extends StatelessWidget {
  const Transistor3DView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conceptual 3D TFET Structure"),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          width: 400,
          height: 500,
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Substrate
              _buildComponent(
                label: "Substrate (Silicon)",
                color: Colors.blueGrey[300]!,
                width: 350,
                height: 100,
                top: 250,
                left: 25,
              ),
              // Source
              _buildComponent(
                label: "Source (Germanium)",
                color: Colors.red[400]!,
                width: 80,
                height: 80,
                top: 170,
                left: 25,
              ),
              // Channel (Step)
              _buildComponent(
                label: "Step Channel",
                color: Colors.lightGreen[400]!,
                width: 190,
                height: 40,
                top: 210,
                left: 105,
              ),
               // Drain
              _buildComponent(
                label: "Drain (Silicon)",
                color: Colors.lightGreen[600]!,
                width: 80,
                height: 80,
                top: 170,
                left: 295,
              ),
              // Gate Oxide
              _buildComponent(
                label: "", // No label for oxide layer
                color: Colors.cyan.withOpacity(0.5),
                width: 270,
                height: 20,
                top: 150,
                left: 65,
              ),
              // Gate 1 (Auxiliary Gate)
              _buildComponent(
                label: "Aux Gate",
                color: Colors.orange[600]!,
                width: 80,
                height: 40,
                top: 110,
                left: 65,
              ),
              // Gate 2 (Control Gate)
              _buildComponent(
                label: "Control Gate",
                color: Colors.orange[800]!,
                width: 190,
                height: 40,
                top: 110,
                left: 145,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildComponent({
    required String label,
    required Color color,
    required double width,
    required double height,
    double? top,
    double? left,
    double? right,
    double? bottom,
  }) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Tooltip(
        message: label,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(color: Colors.black54, width: 1.5),
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(5, 5),
              ),
            ],
          ),
          child: Center(
            child: Text(
              label.split(" ")[0], // Show only first word on component
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
