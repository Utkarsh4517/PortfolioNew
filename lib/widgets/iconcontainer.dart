import 'package:flutter/material.dart';

class IconLink extends StatefulWidget {
  final IconData icon;
  final Color colorToChange;
  const IconLink({
    required this.icon,
    required this.colorToChange,
    super.key,
  });

  @override
  State<IconLink> createState() => _IconLinkState();
}

class _IconLinkState extends State<IconLink> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 22,),
          elevation: 0,
          backgroundColor: isHovered ? widget.colorToChange : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Icon(
          widget.icon,
        ),
      ),
    );
  }
}
