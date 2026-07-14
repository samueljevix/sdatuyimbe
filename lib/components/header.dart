import 'package:jaspr/jaspr.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    return Component.element(
      tag: 'header',
      children: [
        Component.element(
          tag: 'div',
          attributes: {'class': 'site-shell site-header'},
          children: [
            Component.element(
              tag: 'div',
              attributes: {'class': 'brand'},
              children: [
                Component.element(
                  tag: 'a',
                  attributes: {'href': '#top', 'class': 'brand-link'},
                  children: [
                    Component.element(tag: 'img', attributes: {
                      'src': '/assets/icon/icon.png',
                      'alt': 'SDA Tuyimbe logo',
                      'class': 'app-logo'
                    }),
                  ],
                ),
                Component.element(
                    tag: 'p',
                    attributes: {'class': 'badge'},
                    children: [Component.text('SDA Tuyimbe')]),
              ],
            ),
            Component.element(
              tag: 'nav',
              attributes: {'class': 'nav-links'},
              children: [
                Component.element(
                    tag: 'a',
                    attributes: {'href': '#features'},
                    children: [Component.text('Features')]),
                Component.element(
                    tag: 'a',
                    attributes: {'href': '#install'},
                    children: [Component.text('Install')]),
                Component.element(
                    tag: 'a',
                    attributes: {'href': '#screenshots'},
                    children: [Component.text('Screenshots')]),
                Component.element(
                    tag: 'a',
                    attributes: {'href': '#faq'},
                    children: [Component.text('FAQ')]),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
