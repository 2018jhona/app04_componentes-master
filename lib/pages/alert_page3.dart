import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Your video has been uploade!"),
          backgroundColor: Color.fromARGB(255, 240, 202, 202),
          content: Text(
              "You'ro video has finished uploading and is livo."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Skip"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Next"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert(context);
              },
              child: Text("Alert"),
            )
          ],
        ),
      ),
    );
  }
}
