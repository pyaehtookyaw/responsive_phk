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
            }),
      ),
    );
  }
}
