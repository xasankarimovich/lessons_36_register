import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tempratura extends StatefulWidget {
  const Tempratura({super.key});

  @override
  _TempraturaState createState() => _TempraturaState();
}

class _TempraturaState extends State<Tempratura> {
  late double value;
  String _convertedValue = '';
  bool _isCelsius = true;

  final TextEditingController _controller = TextEditingController();

  void _convertTemperature() {
    setState(() {
      double inputValue = double.tryParse(_controller.text) ?? 0;
      if (_isCelsius) {
        double celsiusValue = (inputValue * 9 / 5) + 32;
        _convertedValue = '${celsiusValue.toStringAsFixed(2)} °C';
      } else {
        double fahrenheitValue = (inputValue - 32) * 5 / 9;
        _convertedValue = '${fahrenheitValue.toStringAsFixed(2)} °F';
      }
    });
  }

  void _toggleConversion() {
    setState(() {
      _isCelsius = !_isCelsius;
      _convertedValue = '';
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculate Temperature',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
                labelText:
                    'Enter Temperature in ${_isCelsius ? 'Celsius' : 'Fahrenheit'}',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: CupertinoColors.activeBlue),
              onPressed: _convertTemperature,
              child: const Text(
                'Calculate',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              _convertedValue,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: CupertinoColors.activeBlue,
              ),
              onPressed: _toggleConversion,
              child: Text(
                  'Switch to ${_isCelsius ? 'Fahrenheit to Celsius' : 'Celsius to Fahrenheit'}',style: TextStyle(fontSize: 25,color: Colors.white,),),
            ),

          ],
        ),
      ),
    );
  }
}
