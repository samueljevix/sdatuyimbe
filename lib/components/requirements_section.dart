import 'package:jaspr/jaspr.dart';

class RequirementsSection extends StatelessComponent {
  const RequirementsSection({super.key});

  @override
  Component build(BuildContext context) {
    return Component.element(
      tag: 'section',
      attributes: {'class': 'section section-alt'},
      children: [
        Component.element(
          tag: 'div',
          attributes: {'class': 'site-shell'},
          children: [
            Component.element(
                tag: 'h2', children: [Component.text('System requirements')]),
            Component.element(tag: 'div', attributes: {
              'class': 'cards'
            }, children: [
              _requirementCard('Windows 10 or 11',
                  'Supports desktop PCs and laptops for church presentation and rehearsal.'),
              _requirementCard('500 MB free space',
                  'Enough room for app assets, hymn audio, and solfa sheets.'),
              _requirementCard('Internet for download',
                  'Required only for downloading and first-time setup.'),
            ]),
          ],
        ),
      ],
    );
  }

  Component _requirementCard(String title, String text) {
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
