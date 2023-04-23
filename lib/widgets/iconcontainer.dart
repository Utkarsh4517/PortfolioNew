import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class IconLink extends StatefulWidget {
  final String urlToLaunch;
  final IconData icon;
  final Color colorToChange;
  const IconLink({
    required this.urlToLaunch,
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
      child: SizedBox(
        width: 45,
        child: ElevatedButton(
          onPressed: () {
            launchUrlString(widget.urlToLaunch);
          },
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 18,),
            elevation: 0,
            backgroundColor: isHovered ? widget.colorToChange : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          child: Icon(
            widget.icon, color: isHovered? Colors.white: Colors.black,
          ),
        ),
      ),
    );
  }
}
