import 'package:flutter/material.dart';

// Our main view (The Dashboard) extends from the StatefulWidget class since
// we are going to be managing our app state from within here.
class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  // Every StatefulWidget requires a createState method that will be linked
  // to a specific state class.
  @override
  DashboardViewState createState() => DashboardViewState();
}

// To create a State we need to extend the State class and reference the
// StatefulWidget this state will be referring to.
class DashboardViewState extends State<DashboardView> {

  // Every class variable that we define within our State class global scope
  // will be part of our view state.
  bool beatPlaying = false;

  void _onMainButtonClick() {
    // The setStateMethod allows us to update a class scope value and then
    // update UI with the new values.
    setState(() {
      beatPlaying = !beatPlaying;
    });
  }

  // The build method will be executed when the Widget is created for the first
  // time and everytime a State value is updated through the setState method.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(beatPlaying ? "Playing Beat" : "Not Playing Beat"),
        MaterialButton(
          onPressed: _onMainButtonClick,
          child: const Text("Press Me"),
        )
      ],
    );
  }
}
