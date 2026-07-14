import 'package:jaspr/jaspr.dart';

class FaqSection extends StatelessComponent {
  const FaqSection({super.key});

  @override
  Component build(BuildContext context) {
    return Component.element(
      tag: 'section',
      attributes: {'id': 'faq', 'class': 'section section-alt'},
      children: [
        Component.element(
          tag: 'div',
          attributes: {'class': 'site-shell'},
          children: [
            Component.element(
                tag: 'h2',
                children: [Component.text('Frequently asked questions')]),
            Component.element(tag: 'div', attributes: {
              'class': 'faq-list'
            }, children: [
              _faqItem('Why does Windows show "Publisher not verified"?',
                  'This happens when the app isn\'t code-signed by a recognized publisher. Click "More info" and then "Run anyway" to install securely.'),
              _faqItem('Can I use this on a projector?',
                  'Yes. The app is built for large-screen presentation and projector display during worship services.'),
              _faqItem('Does it support Luganda and English hymns?',
                  'Yes. Every hymn includes both Luganda and English text to support bilingual congregations.'),
              _faqItem('Is the app really offline?',
                  'Yes. Once installed, the app works without internet because the hymns, audio files, and notation are packaged locally on your device.'),
              _faqItem('What languages are supported?',
                  'The app includes both Luganda (Tuyimbe) and English hymn texts, making it easier to worship and teach in either language.'),
              _faqItem('Will the installer work on Windows 10 and 11?',
                  'Yes. The package is designed for Windows 10 and 11, and the guide includes the simplest trusted-install steps for both versions.'),
            ]),
          ],
        ),
      ],
    );
  }

  Component _faqItem(String question, String answer) {
    return Component.element(
      tag: 'div',
      attributes: {'class': 'faq-item'},
      children: [
        Component.element(
            tag: 'h3',
            attributes: {'class': 'faq-question'},
            children: [Component.text(question)]),
        Component.element(
            tag: 'p',
            attributes: {'class': 'faq-answer'},
            children: [Component.text(answer)]),
      ],
    );
  }
}
