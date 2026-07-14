import 'package:jaspr/jaspr.dart';

class ScreenshotsSection extends StatelessComponent {
  const ScreenshotsSection({super.key});

  @override
  Component build(BuildContext context) {
    return Component.element(
      tag: 'section',
      attributes: {'id': 'screenshots', 'class': 'section'},
      children: [
        Component.element(
          tag: 'div',
          attributes: {'class': 'site-shell'},
          children: [
            Component.element(
                tag: 'h2',
                children: [Component.text('Screenshots & presentation view')]),
            Component.element(tag: 'div', attributes: {
              'class': 'screenshot-grid'
            }, children: [
              _screenshotCard('Hymn list — Luganda & English'),
              _screenshotCard('Audio player controls'),
              _screenshotCard('Solfa sheet view'),
              _screenshotCard('Projector-ready display'),
            ]),
          ],
        ),
      ],
    );
  }

  Component _screenshotCard(String label) {
    return Component.element(
      tag: 'div',
      attributes: {'class': 'screenshot-card'},
      children: [Component.text(label)],
    );
  }
}
