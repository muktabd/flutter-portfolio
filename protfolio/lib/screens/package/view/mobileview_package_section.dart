import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/global/methods/custom_url_launcher.dart';
import 'package:portfolio/global/widgets/global_text.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../global/widgets/custom_toast.dart';
import 'days_ago_widget.dart';

class MobileViewPackageSection extends StatefulWidget {
  const MobileViewPackageSection({super.key});

  @override
  State<MobileViewPackageSection> createState() => _MobileViewPackageSectionState();
}

class _MobileViewPackageSectionState extends State<MobileViewPackageSection> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1E1E1E),
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title & Description
            GlobalText(
              str: 'Try my flutter package'.toUpperCase(),
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Text(
                              'circular_badge_avatar',
                              style: TextStyle(
                                color: Colors.blue[300],
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                FlutterClipboard.copy(
                                  'clipboard: ^1.0.0',
                                ).then((value) => showToast('copied'));
                              },
                              icon: Icon(Icons.copy, size: 18.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'A useful flutter package to make a cicular avater',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12.0,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    // Stats Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        _Stat(label: 'LIKES', value: '7'),
                        SizedBox(width: 16),
                        _Stat(label: 'POINTS', value: '140'),
                        SizedBox(width: 16),
                        _Stat(label: 'DOWNLOADS', value: '169'),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Meta info row
            Row(
              children: [
                InkWell(
                  onTap: () => launchUrlNow('https://pub.dev/packages/circular_badge_avatar'),
                  child: Text('v 1.0.0', style: TextStyle(color: Colors.blue, fontSize: 12)),
                ),
                const SizedBox(width: 8),
                DaysAgoWidget(
                  targetDate: DateTime(2025, 6, 29),
                ), // Will show (5 days ago) if today is 2025-07-04
                const SizedBox(width: 6),
                Icon(Icons.link, size: 14, color: Colors.grey[400]),
                const SizedBox(width: 4),
                Text('muktabd.info', style: TextStyle(color: Colors.grey[400], fontSize: 12)),
                const SizedBox(width: 6),
                const Icon(Icons.check_circle_outline, size: 14, color: Colors.grey),
                const SizedBox(width: 4),
                const Text('BSD-3-Clause', style: TextStyle(color: Colors.grey, fontSize: 12)),
                const SizedBox(width: 6),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  child: const Text(
                    'Dart 3 compatible',
                    style: TextStyle(color: Colors.blue, fontSize: 11.0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Tags
            Wrap(
              spacing: 0.0,
              runSpacing: 6,
              children: const [
                _Tag(label: 'SDK'),
                _Tag(label: 'FLUTTER'),
                SizedBox(width: 5.0),
                _Tag(label: 'PLATFORM'),
                _Tag(label: 'ANDROID'),
                _Tag(label: 'IOS'),
                _Tag(label: 'LINUX'),
                _Tag(label: 'MACOS'),
                _Tag(label: 'WINDOWS'),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class _Tag extends StatelessWidget {
  final String label;
  const _Tag({required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
      decoration: BoxDecoration(color: Colors.blue[900], borderRadius: BorderRadius.circular(0.0)),
      child: Text(
        label,
        style: const TextStyle(fontSize: 11, color: Colors.white, letterSpacing: 0.5),
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  final String label;
  final String value;
  const _Stat({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 2),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 10)),
      ],
    );
  }
}
