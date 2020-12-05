// import flutter
import "package:flutter/material.dart";

// define the app
class App extends StatelessWidget {
  // define the create state function
  // build method
  @override
  Widget build(BuildContext context) {
    // return a material app
    return MaterialApp(
      // set home page
      home: Scaffold(
        // set the appbar
        appBar: AppBar(
          // set the title
          title: Text('Login Form'),
          // set the color
          backgroundColor: Colors.green,
        ),
        // body
        body: Text('Show Login form here!'),
      ),
    );
  }
}
