
// Replace this inside your _mainContent

import 'package:flutter/material.dart';
import 'package:timelines_plus/timelines_plus.dart';

class MyResumeScreen extends StatelessWidget {
  const MyResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 800;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: isWide
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(flex: 3, child: _mainContent()),
                      const SizedBox(width: 20),
                      Expanded(flex: 1, child: _sideContent()),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _sideContent(),
                      const SizedBox(height: 20),
                      _mainContent(),
                    ],
                  ),
          );
        },
      ),
    );
  }

  Widget _mainContent() {
    final experiences = [
      {
        'date': 'May, 2022 - Present',
        'position': 'Software Engineer',
        'company': 'Intrinsik Technologies Sdn Bhd',
        'responsibilities': [
          'Developing and maintaining the back-end web application. (Node.js)',
          'Developing and maintaining the front-end web application. (React.js)',
          'Deploying the web application to the cloud. (AWS)',
          'Leading the team to follow the scrum methodology.',
          'Working with the team lead and stakeholders to manage the product backlog and scrum events.',
        ]
      },
      {
        'date': 'Apr, 2022 - Dec, 2021',
        'position': 'Software Developer',
        'company': 'Oxcom Sdn. Bhd.',
        'responsibilities': [
          'Developing RESTful APIs for web and mobile app. (Node.js)',
          'Designing Microservice Architecture.',
          'Developing and maintaining the back-end web application. (Node.js)',
          'Developing Admin Panel for Oxcom (MERN Stack)',
          'Deploying the web application to the cloud. (AWS)',
        ],
        'accomplished': 'Developed an E-commerce web app using React, Node, MongoDB, Docker, and CI/CD.'
      },
      {
        'date': 'Dec, 2021 - Dec, 2020',
        'position': 'Software Developer',
        'company': 'RedNet (M) Sdn. Bhd.',
        'responsibilities': [
          'Involvement as a Software Developer.',
          'Refer to: https://website.erider.my/',
        ]
      }
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Bayes Ahmed Shoharto', style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
        const Text('CSD® | 3.5+ years of experience | Full Stack Software Developer and Partly Scrum Master'),
        const SizedBox(height: 20),
        const Text('Work Experiences', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Timeline.tileBuilder(
          theme: TimelineThemeData(
            nodePosition: 0,
            indicatorTheme: const IndicatorThemeData(
              color: Colors.blue,
              size: 20,
            ),
            connectorTheme: const ConnectorThemeData(
              color: Colors.blueAccent,
              thickness: 2.5,
            ),
          ),
          builder: TimelineTileBuilder.connected(
            connectionDirection: ConnectionDirection.before,
            itemCount: experiences.length,
            contentsBuilder: (context, index) {
              final exp = experiences[index];
              return Padding(
                padding: const EdgeInsets.only(left: 8.0, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(exp['date'] as String, style: const TextStyle(color: Colors.grey)),
                    Text(exp['position'] as String, style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text(exp['company'] as String, style: const TextStyle(color: Colors.blue)),
                    const SizedBox(height: 6),
                    ...List<String>.from(exp['responsibilities'] as List).map((r) => Text('• $r')),
                    if (exp['accomplished'] != null) ...[
                      const SizedBox(height: 6),
                      const Text('Accomplished:', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(exp['accomplished'] as String),
                    ]
                  ],
                ),
              );
            },
            indicatorBuilder: (_, __) => const DotIndicator(),
            connectorBuilder: (_, index, ___) => const SolidLineConnector(),
          ),
        ),
      ],
    );
  }

  Widget _experienceTile({
    required String date,
    required String position,
    required String company,
    required List<String> responsibilities,
    String? accomplished,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('$date', style: const TextStyle(color: Colors.grey)),
        Text(position, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(company, style: const TextStyle(color: Colors.blue)),
        const SizedBox(height: 6),
        ...responsibilities.map((r) => Text('• $r')).toList(),
        if (accomplished != null) ...[
          const SizedBox(height: 6),
          const Text('Accomplished:', style: TextStyle(fontWeight: FontWeight.bold)),
          Text(accomplished),
        ],
      ]),
    );
  }

  Widget _sideContent() {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/profile.png'), // Replace with your asset
        ),
        const SizedBox(height: 10),
        const Text(
          'Certified Scrum Developer®',
          style: TextStyle(color: Colors.blue),
        ),
        const SizedBox(height: 20),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text('Contact Info', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        const SizedBox(height: 5),
        const Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('📧 shoharto@gmail.com'),
              Text('🔗 linkedin.com/in/shoharto'),
              Text('📍 KL, Malaysia'),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text('Training & Certification', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        const SizedBox(height: 5),
        const Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('• Certified Scrum Developer (CSD)'),
              Text('• Scrum Fundamentals Certified (SFC™)'),
              Text('• Build Scalable Project using Node.js'),
              Text('• Web Design'),
            ],
          ),
        ),
      ],
    );
  }
}
