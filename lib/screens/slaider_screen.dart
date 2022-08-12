import 'package:flutter/material.dart';
import 'package:proyect/theme/app_theme.dart';

class SlaiderScreen extends StatefulWidget {
  const SlaiderScreen({Key? key}) : super(key: key);

  @override
  State<SlaiderScreen> createState() => _SlaiderScreenState();
}

class _SlaiderScreenState extends State<SlaiderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Slaider y cheks"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Slider.adaptive(
                  min: 50,
                  max: 400,
                  activeColor: AppTheme.primary,
                  value: _sliderValue,
                  onChanged: _sliderEnable
                      ? (value) {
                          _sliderValue = value;
                          setState(() {});
                        }
                      : null),
              /*     Checkbox(
                  value: _sliderEnable,
                  onChanged: (value) {
                    _sliderEnable = value ?? true;
                    setState(() {});
                  }),*/
              /* Switch(
                  value: _sliderEnable,
                  onChanged: (value) => setState(() {
                        _sliderEnable = value;
                      })),*/
              CheckboxListTile(
                  activeColor: AppTheme.primary,
                  title: const Text(
                    "Habilitar Slider",
                  ),
                  value: _sliderEnable,
                  onChanged: (value) => setState(() {
                        _sliderEnable = value ?? true;
                      })),
              SwitchListTile.adaptive(
                  title: const Text("Habilitar switch"),
                  value: _sliderEnable,
                  onChanged: (value) => setState(() {
                        _sliderEnable = value;
                      })),
     //         const AboutListTile(),  //lista de licencias
              SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      "https://static.wikia.nocookie.net/batman/images/d/d0/TB-Batman.png/revision/latest/smart/width/250/height/250?cb=20120508141950&path-prefix=es"),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ],
          ),
        ));
  }
}
