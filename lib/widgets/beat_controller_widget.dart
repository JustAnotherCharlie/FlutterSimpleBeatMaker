import 'package:flutter/material.dart';

// Since the state of the application is been manage by our DashboardView, then
// we can make our BeatController just a simple UI component that will get
// rendered everytime our parent (DashboardView) updates its state.
class BeatControllerWidget extends StatelessWidget {

  // We define the required parameters for our BeatController object.
  final String label;

  const BeatControllerWidget({
    Key? key,
    required this.label
  }) : super(key: key);

  // Since we want to add the same note pill multiple times, we can extract
  // portions of code to make our component a bit more modular and readable.
  Widget _getNotePill() {
    // To apply a borderRadius with flutter we can use the BorderRadius class
    // which receives a Radius object which applies a shape modifier with a
    // radius value.
    const borderRadius = BorderRadius.all(Radius.circular(20));

    // Not every Widget within flutter have the same properties, things like
    // padding, margin, radius are available only to a selected amount
    // of widgets.
    return Material(
      borderRadius: borderRadius,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: () {},
        child: const SizedBox(
          height: 30,
          width: 60,
        ),
      ),
    );
  }

  // We can control how Columns or Rows manage there children by applying
  // a crossAxisAlignment or a mainAxisAlignment.
  //
  // See line 43 and 54.
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          const SizedBox(height: 10),
          Container(
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _getNotePill(),
                _getNotePill(),
                _getNotePill(),
                _getNotePill(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
