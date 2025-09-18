import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _switchValue = false;
  double _sliderValue = 30;
  int? _radioValue = 1;
  bool _checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<ThemeManager>(context);
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Themes"),
        actions: [
          DropdownButton<AppThemeMode>(
            value: themeManager.appThemeMode,
            underline: const SizedBox(),
            icon: Icon(
              Icons.color_lens,
              color: isDarkMode ? Colors.white : Colors.black,
            ),
            dropdownColor: Theme.of(context).canvasColor,
            items: const [
              DropdownMenuItem(
                value: AppThemeMode.system,
                child: Text("System Default"),
              ),
              DropdownMenuItem(
                value: AppThemeMode.light,
                child: Text("Light Theme"),
              ),
              DropdownMenuItem(
                value: AppThemeMode.dark,
                child: Text("Dark Theme"),
              ),
            ],
            onChanged: (AppThemeMode? newMode) {
              if (newMode != null) {
                themeManager.setTheme(newMode);
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              'Headline Text',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'This is body text. It will use the current theme’s text style.',
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(labelText: 'Text Field'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
            const SizedBox(height: 10),
            TextButton(onPressed: () {}, child: const Text('Text Button')),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text('Switch'),
                const SizedBox(width: 10),
                Switch(
                  value: _switchValue,
                  onChanged: (val) => setState(() => _switchValue = val),
                ),
              ],
            ),
            Row(
              children: [
                const Text('Slider'),
                Expanded(
                  child: Slider(
                    value: _sliderValue,
                    min: 0,
                    max: 100,
                    divisions: 10,
                    label: _sliderValue.round().toString(),
                    onChanged: (val) => setState(() => _sliderValue = val),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text('Radio 1'),
                Radio<int>(
                  value: 1,
                  groupValue: _radioValue,
                  onChanged: (val) => setState(() => _radioValue = val),
                ),
                const Text('Radio 2'),
                Radio<int>(
                  value: 2,
                  groupValue: _radioValue,
                  onChanged: (val) => setState(() => _radioValue = val),
                ),
              ],
            ),
            Row(
              children: [
                const Text('Checkbox'),
                Checkbox(
                  value: _checkboxValue,
                  onChanged: (val) => setState(() => _checkboxValue = val!),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Icon(Icons.favorite, size: 32),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: const [
                    Text('This is a themed Card widget'),
                    SizedBox(height: 8),
                    Text('Styled via cardTheme'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
