import 'package:example/data/info_list.dart';
import 'package:flutter/material.dart';
import 'package:responsive_phk/constants/breakpoints.dart';
import 'package:responsive_phk/widgets/responsive_two_column_layout.dart';

class ResponsiveTwoColumnScreen extends StatelessWidget {
  const ResponsiveTwoColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Responsive Two Column Screen'),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: SizedBox(
              width: Breakpoint.desktop,
              child: ResponsiveTwoColumnLayout(
                startContent: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.blueGrey),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Pyae Htoo Kyaw'),
                      Text('phk99977@gmail.com'),
                      Text('I am senior software developer.')
                    ],
                  ),
                ),
                spacing: 20,
                endContent: ListView.builder(
                    shrinkWrap: true,
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
                    }),
              ),
            ),
          ),
        ));
  }
}
