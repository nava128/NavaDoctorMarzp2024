import 'package:doctor_app_ui_tutorial/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff98fbe9),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Elige a tu doctor deseado que quieras',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        )),
                const SizedBox(height: 10),
                const Text(
                  'Si buscas un médico experto para tu tratamiento entonces estás en el lugar indicado. Aquí puede encontrar el médico que desee y discutir sus problemas con él.',
                  style: TextStyle(fontWeight: FontWeight.bold, height: 1.5),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Colors.white),
                  child: const Text('Empezar'),
                ),
              ],
            ),
          ),
          Expanded(
            // child: SvgPicture.asset('assets/svg/welcome.svg'),
            child: Image.network(
                "https://raw.githubusercontent.com/nava128/Img_IOS/main/Unidad_II_FlutLab_Android/doctores2.jpg"),
          ),
        ],
      ),
    );
  }
}
