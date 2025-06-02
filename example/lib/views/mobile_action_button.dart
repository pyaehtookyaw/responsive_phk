import 'package:example/views/response_center_screen.dart';
import 'package:example/views/response_two_column_screen.dart';
import 'package:flutter/material.dart';

enum PopupMenuOption { responsiceCenter, responsiveTwoColumn }

class MobileActionButton extends StatelessWidget {
  const MobileActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(Icons.more_vert),
      itemBuilder: (_) {
        return <PopupMenuEntry<PopupMenuOption>>[
          PopupMenuItem(
            value: PopupMenuOption.responsiceCenter,
            child: Text('Responsive Center'),
          ),
          PopupMenuItem(
            value: PopupMenuOption.responsiveTwoColumn,
            child: Text('Responsive Two Column'),
          ),
        ];
      },
      onSelected: (option) {
        // push to different routes based on selected option
        switch (option) {
          case PopupMenuOption.responsiceCenter:
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ResponseCenterScreen()),
            );
            break;
          case PopupMenuOption.responsiveTwoColumn:
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ResponsiveTwoColumnScreen()),
            );
            break;
        }
      },
    );
  }
}
