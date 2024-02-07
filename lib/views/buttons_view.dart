import 'package:flutter/material.dart';

class ButtonsView extends StatelessWidget {
  static String name = "buttons_view";

  const ButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomStarButton(
            onTap: () {
            },
            color: Colors.yellow,
            icon: Icons.star,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            child: const Text('Botón Relleno'),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              _showInputDialog(context);
            },
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.deepPurple,
            ),
            child: const Text('TextButton'),
          ),
        ],
      ),
    );
  }

  void _showInputDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Ingrese algo:'),
          content: const TextField(
            decoration: InputDecoration(hintText: 'Ingrese aquí'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }
}

class CustomStarButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color color;
  final IconData icon;

  const CustomStarButton({
    Key? key,
    required this.onTap,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        padding: const EdgeInsets.all(12),
        child: Icon(
          icon,
          size: 36,
          color: Colors.white,
        ),
      ),
    );
  }
}
