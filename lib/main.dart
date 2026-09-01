import 'package:flutter/material.dart';

void main() {
  runApp(const CiCdDemoApp());
}

class CiCdDemoApp extends StatelessWidget {
  const CiCdDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CI/CD Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const CiCdHomePage(),
    );
  }
}

class CiCdHomePage extends StatelessWidget {
  const CiCdHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter CI/CD Demo')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CI/CD Pipeline Demo',
              style: Theme.of(
                context,
              ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'A Flutter demo project for learning and implementing '
              'Continuous Integration and Continuous Delivery.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 32),

            const Text(
              'Pipeline Stages',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            const PipelineStep(
              icon: Icons.cloud_upload_outlined,
              title: 'Code Push',
              description: 'Developer pushes code to the repository.',
            ),
            const PipelineStep(
              icon: Icons.analytics_outlined,
              title: 'Code Analysis',
              description: 'Flutter analyzes the project for code issues.',
            ),
            const PipelineStep(
              icon: Icons.check_circle_outline,
              title: 'Run Tests',
              description: 'Automated tests verify the application.',
            ),
            const PipelineStep(
              icon: Icons.build_outlined,
              title: 'Build',
              description: 'A release APK is generated automatically.',
            ),
            const PipelineStep(
              icon: Icons.rocket_launch_outlined,
              title: 'Delivery',
              description: 'The generated build is prepared for release.',
            ),

            const SizedBox(height: 24),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Theme.of(context).colorScheme.primary,
                      size: 32,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pipeline Status',
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          const Text('Ready for CI/CD implementation'),
                        ],
                      ),
                    ),
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

class PipelineStep extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const PipelineStep({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(child: Icon(icon)),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text(description),
        ),
      ),
    );
  }
}
