// import the flutter
import "package:flutter/material.dart";

// define the login statefule class
class LoginScreen extends StatefulWidget {
  // define a create state function
  _LoginScreenState createState() => _LoginScreenState();
}

// login Screen satate
class _LoginScreenState extends State<LoginScreen> {
  // create a global key
  // =>  a global key is aunique reference for each of the widgets that are displayed on the screen
  // however, when working with the form widget, the key used references the FormState class and not
  // the form itself.
  // the FormState class is responsible for storing all the state that is needed to maintain a form.

  // creating a global key
  final formKey = GlobalKey<FormState>();

  // build function
  @override
  Widget build(BuildContext context) {
    // return a widget
    return buildForm();
  }

  // function fore retuning the form
  Widget buildForm() {
    // return the container
    return Container(
      // set the margin
      margin: EdgeInsets.all(20.0),
      // child
      child: Form(
        // assign the key
        key: formKey,
        // return a column
        child: Column(
          // children
          children: <Widget>[
            // return the email field
            emailField(),
            // show the password field
            passwordField(),
            // put the padding to allow for spacing
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
            ),
            // show the submit button
            submitButton(),
          ],
        ),
      ),
    );
  }

  // function for returning the email field
  TextFormField emailField() {
    // return a text field
    return TextFormField(
      // set the decoration => this will allow for setting the input label
      // the placeholder (hint text) and ther characterictics
      decoration: InputDecoration(
        // set the label
        labelText: 'Email address: ',
        // set the hint text ( the placeholder)
        hintText: 'you@example.com',
        // set the icon
        icon: Icon(Icons.email),
      ),

      // optimize the experience for entering an email
      keyboardType: TextInputType.emailAddress,
    );
  }

  // function for displaying the password field
  TextFormField passwordField() {
    // return a text form field
    return TextFormField(
      // set the decoration
      decoration: InputDecoration(
        // set the label
        labelText: "Password",
        // set the hint
        hintText: "password",
        // icon
        icon: Icon(Icons.visibility_off),
      ),
      // hide what the user has typed
      obscureText: true,
    );
  }

  // function for returning submit button
  ElevatedButton submitButton() {
    // return a raised button
    return ElevatedButton(
      // text to display
      child: Text('Submit'),
      // change the color to green
      style: ButtonStyle(
        // set the background color
        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
      ),
      // reuqiure on press
      onPressed: () {
        // reset the fields on the form
        // can be done by the gloabla key that uses the function current state
        // to give access to the state of the widget for which it references, in this case,
        // the FormState widget.
        formKey.currentState.reset();
      },
    );
  }
}
