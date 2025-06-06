## responsive_phk

A Flutter package that helps you build responsive layouts effortlessly across different screen sizes and devices.

## Features

✅ Easily adapt your widgets to different screen sizes.  
✅ Lightweight and easy to use.  
✅ No external dependencies.

## Getting started

```dart
import 'package:responsive_phk/widgets/responsive_center.dart';

ResponsiveAppBar(
  title: 'Home Screen',
   backgroundColor: Colors.white,
  foregroundColor: Colors.black,
  centerTitle: false,
  mobileActions: [MobileActionButton()],
  desktopActions: [desktopActions]
)
```

## Demo

![Responsive Layout Demo](screenshots/responsive_phk.gif)

## Screenshots (Mobile)

| ![Responsive Center Mobile](screenshots/responsive_center_mobile.png) | ![Responsive Two Column Mobile](screenshots/responsive_two_column_mobile.png) |
|:--:|:--:|
| Centered Layout | Two-Column Layout |

## Screenshots (Web)

| ![Responsive Center Web](screenshots/responsive_center_web.png) | ![Responsive Two Column Web](screenshots/responsive_two_column_web.png) |
|:--:|:--:|
| Centered Layout | Two-Column Layout |

<!-- ## Demo Video

🎥 [Watch the Demo Video](https://github.com/pyaehtookyaw/responsive_phk/blob/master/video/responsive_phk.mp4) -->

## Example usage

```dart
import 'package:example/data/info_list.dart';
import 'package:flutter/material.dart';
import 'package:responsive_phk/widgets/responsive_center.dart';

class ResponseCenterScreen extends StatelessWidget {
  const ResponseCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Response Center Screen'),
        centerTitle: true,
      ),
      body: ResponsiveCenter(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: info.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(info[index].title ?? ''),
                    Text(info[index].description)
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
```