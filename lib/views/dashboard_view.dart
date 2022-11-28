import 'package:flutter/material.dart';
import 'package:workshop/widgets/beat_controller_widget.dart';

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
  bool _beatPlaying = false;

  final List _notes = [
    [false, false, false, false],
    [false, false, false, false],
    [false, false, false, false]
  ];

  void _onMainButtonClick() {
    // The setStateMethod allows us to update a class scope value and then
    // update UI with the new values.
    setState(() {
      _beatPlaying = !_beatPlaying;
    });
  }

  void _onControllerPillCLick(int controllerIndex, int noteIndex) {
    setState(() {
      _notes[controllerIndex][noteIndex] = !_notes[controllerIndex][noteIndex];
    });
  }

  Widget _getInstrumentController(String label, int index) {
    return BeatControllerWidget(
        label: label,
        pillsState: _notes[index],
        controllerIndex: index,
        updateControllerState: _onControllerPillCLick
    );
  }

  // The build method will be executed when the Widget is created for the first
  // time and everytime a State value is updated through the setState method.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _getInstrumentController("Kick Drum", 0),
        _getInstrumentController("Snare Drum", 1),
        _getInstrumentController("Hi-Hat", 2),
        MaterialButton(
          onPressed: _onMainButtonClick,
          child: Text(_beatPlaying ? "Playing Beat" : "Not Playing Beat"),
        )
      ],
    );
  }
}
