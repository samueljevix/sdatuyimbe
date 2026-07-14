import 'package:jaspr/jaspr.dart';

class SupportSection extends StatelessComponent {
  const SupportSection({super.key});

  @override
  Component build(BuildContext context) {
    return Component.element(
      tag: 'section',
      attributes: {'class': 'section'},
      children: [
        Component.element(
          tag: 'div',
          attributes: {'class': 'site-shell'},
          children: [
            Component.element(tag: 'div', attributes: {
              'class': 'section-header'
            }, children: [
              Component.element(
                  tag: 'h2',
                  children: [Component.text('Why people use SDA Tuyimbe')]),
              Component.element(tag: 'p', children: [
                Component.text(
                    'Built for worship leaders, teachers, and families who want fast access to hymns without relying on the internet.')
              ]),
            ]),
            Component.element(tag: 'div', attributes: {
              'class': 'support-grid'
            }, children: [
              Component.element(tag: 'div', attributes: {
                'class': 'support-card'
              }, children: [
                Component.element(
                    tag: 'h3',
                    children: [Component.text('Fast, local access')]),
                Component.element(tag: 'p', children: [
                  Component.text(
                      'Open the app instantly and search hymns offline, whether you are at church, in a classroom, or at home.')
                ]),
              ]),
              Component.element(tag: 'div', attributes: {
                'class': 'support-card'
              }, children: [
                Component.element(
                    tag: 'h3',
                    children: [Component.text('Helpful for teaching')]),
                Component.element(tag: 'p', children: [
                  Component.text(
                      'Switch between Luganda and English, listen to tunes, and use notation sheets to support learning.')
                ]),
              ]),
            ]),
          ],
        ),
      ],
    );
  }
}
