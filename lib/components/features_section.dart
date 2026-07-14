import 'package:jaspr/jaspr.dart';

class FeaturesSection extends StatelessComponent {
  const FeaturesSection({super.key});

  @override
  Component build(BuildContext context) {
    return Component.element(
      tag: 'section',
      attributes: {'id': 'features', 'class': 'section section-alt'},
      children: [
        Component.element(
          tag: 'div',
          attributes: {'class': 'site-shell'},
          children: [
            Component.element(
                tag: 'h2',
                children: [Component.text('What SDA Tuyimbe includes')]),
            Component.element(tag: 'div', attributes: {
              'class': 'cards'
            }, children: [
              _featureCard('Bilingual hymns',
                  'Luganda and English text for every hymn, ready for worship and practice.'),
              _featureCard('Audio playback',
                  'Listen to hymn recordings directly in the app for learning and presentation.'),
              _featureCard('Solfa sheets',
                  'Musical notation that supports choir leaders, worship teams, and presenters.'),
              _featureCard('Projector-ready',
                  'Large-screen support for hymn projection and service display.'),
            ]),
          ],
        ),
      ],
    );
  }

  Component _featureCard(String title, String text) {
    return Component.element(
      tag: 'section',
      attributes: {'class': 'card'},
      children: [
        Component.element(
            tag: 'h3',
            attributes: {'class': 'card-title'},
            children: [Component.text(title)]),
        Component.element(
            tag: 'p',
            attributes: {'class': 'card-text'},
            children: [Component.text(text)]),
      ],
    );
  }
}
