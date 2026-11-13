import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Scaffold -> Padding -> Column -> CustomButton (x3)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom buttons')),
        body: const Padding(
          padding: EdgeInsets.all(16), // root padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // defaults: icon on the left, primary type
              CustomButton(label: 'Submit', icon: Icons.check),
              SizedBox(height: 12),
              CustomButton(
                label: 'Time',
                icon: Icons.access_time,
                iconPosition: IconPosition.right,
                type: ButtonType.secondary,
              ),
              SizedBox(height: 12),
              CustomButton(
                label: 'Account',
                icon: Icons.account_tree,
                iconPosition: IconPosition.right,
                type: ButtonType.disabled,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Button type, each one with a specific color.
enum ButtonType {
  primary(Colors.blue),
  secondary(Colors.green),
  disabled(Color.fromARGB(0, 187, 184, 184)); // light grey

  final Color color;
  const ButtonType(this.color);
}

/// Icon before (left) or after (right) the label.
enum IconPosition { left, right }

class CustomButton extends StatelessWidget {
  final String label; // required
  final IconData icon; // required
  final IconPosition iconPosition; // optional, default = left
  final ButtonType type; // optional, default = primary

  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.iconPosition = IconPosition.left,
    this.type = ButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {
    final Color contentColor = type == ButtonType.disabled
        ? Colors.grey
        : Colors.white;

    // Padding around the icon, to separate it from the text
    final Widget iconWidget = Padding(
      padding: iconPosition == IconPosition.left
          ? const EdgeInsets.only(right: 10)
          : const EdgeInsets.only(left: 10),
      child: Icon(icon, color: contentColor),
    );

    final Widget textWidget = Text(
      label,
      style: TextStyle(color: contentColor, fontSize: 16),
    );

    // Container -> Center -> Row -> (Padding(Icon), Text)
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: type.color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: iconPosition == IconPosition.left
              ? [iconWidget, textWidget]
              : [textWidget, iconWidget],
        ),
      ),
    );
  }
}
