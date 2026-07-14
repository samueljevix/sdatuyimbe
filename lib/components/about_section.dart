import 'package:jaspr/jaspr.dart';

class AboutSection extends StatelessComponent {
  const AboutSection({super.key});

  @override
  Component build(BuildContext context) {
    return Component.element(
      tag: 'section',
      attributes: {'class': 'about-section animate-fade-in'},
      children: [
        Component.element(
          tag: 'div',
          attributes: {'class': 'about-container site-shell'},
          children: [
            Component.element(
                tag: 'h2', children: [Component.text('About SDA Tuyimbe')]),
            Component.element(tag: 'p', attributes: {
              'class': 'subtitle'
            }, children: [
              Component.text(
                  'A dedicated, community-focused project designed to bring the Seventh-day Adventist Hymns to your Windows desktop.'),
            ]),
            Component.element(tag: 'div', attributes: {
              'class': 'about-grid'
            }, children: [
              Component.element(tag: 'div', attributes: {
                'class': 'about-card'
              }, children: [
                Component.element(
                    tag: 'h3',
                    children: [Component.text('Developer & Organization')]),
                Component.element(tag: 'p', children: [
                  Component.text('Created and maintained by '),
                  Component.element(
                      tag: 'strong',
                      children: [Component.text('Lugya Samuel Jevix')]),
                  Component.text(' under the label '),
                  Component.element(
                      tag: 'strong',
                      children: [Component.text('L.S.SoftwareUg')]),
                  Component.text(
                      '. Our goal is to build simple, helpful, and reliable applications for church worship and personal spiritual growth.'),
                ]),
              ]),
              Component.element(tag: 'div', attributes: {
                'class': 'about-card'
              }, children: [
                Component.element(
                    tag: 'h3', children: [Component.text('Hymn Collections')]),
                Component.element(tag: 'p', children: [
                  Component.text(
                      'The app includes the complete collection of SDA Hymns in both '),
                  Component.element(
                      tag: 'strong',
                      children: [Component.text('Luganda ("Tuyimbe")')]),
                  Component.text(' and '),
                  Component.element(
                      tag: 'strong', children: [Component.text('English')]),
                  Component.text(
                      '. It features music notation sheets (Solfa) and MIDI/audio playback tools to help users learn tunes.'),
                ]),
              ]),
              Component.element(tag: 'div', attributes: {
                'class': 'about-card'
              }, children: [
                Component.element(
                    tag: 'h3', children: [Component.text('Privacy First')]),
                Component.element(tag: 'p', children: [
                  Component.text(
                      'We value your privacy. The SDA Tuyimbe application is built to run entirely offline. It does not collect, store, or transmit any personal user data or tracking analytics.'),
                ]),
              ]),
              Component.element(tag: 'div', attributes: {
                'class': 'about-card'
              }, children: [
                Component.element(
                    tag: 'h3',
                    children: [Component.text('Open Source & Contributions')]),
                Component.element(tag: 'p', children: [
                  Component.text(
                      'The application is open source. You can view the code, suggest improvements, report bugs, or contribute on '),
                  Component.element(
                      tag: 'a',
                      attributes: {'href': '#', 'class': 'link'},
                      children: [Component.text('GitHub')]),
                  Component.text(' and edit respectively.'),
                ]),
              ]),
            ]),
          ],
        ),
      ],
    );
  }
}
