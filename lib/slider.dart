import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

void main() => runApp(SliderExample());

class SliderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliderPart1(),
    );
  }
}

class SliderPart1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Part 1'),
      ),
      body: SafeArea(
        child: Part1(),
      ),
    );
  }
}

class Part1 extends StatefulWidget {
  @override
  _Part1State createState() => _Part1State();
}

class _Part1State extends State<Part1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SleekCircularSlider(
        appearance: CircularSliderAppearance(),
        onChange: (value) => print(value),
      ),
    );
  }
}
