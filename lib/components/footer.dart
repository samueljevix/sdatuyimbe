import 'package:jaspr/jaspr.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Component build(BuildContext context) {
    return Component.element(
      tag: 'footer',
      children: [
        Component.element(
          tag: 'div',
          attributes: {'class': 'site-shell'},
          children: [
            Component.element(
              tag: 'div',
              attributes: {'class': 'footer-left'},
              children: [
                Component.element(tag: 'img', attributes: {
                  'src': '/assets/icon/icon.png',
                  'alt': 'SDA Tuyimbe logo',
                  'class': 'footer-logo'
                }),
                Component.element(
                  tag: 'div',
                  attributes: {'class': 'footer-meta'},
                  children: [
                    Component.element(tag: 'p', children: [
                      Component.text(
                          '© 2026 SDA Tuyimbe. Built for worship, choir, and projector presentation.')
                    ]),
                    Component.element(
                      tag: 'p',
                      children: [
                        Component.text(
                            'Contact: +256 754 045 576 | samueljevix234@gmail.com')
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Component.element(
              tag: 'div',
              attributes: {'class': 'footer-right'},
              children: [],
            ),
          ],
        ),
      ],
    );
  }
}
