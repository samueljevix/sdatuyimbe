import 'package:jaspr/jaspr.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});

  @override
  Component build(BuildContext context) {
    return Component.element(
      tag: 'section',
      attributes: {'class': 'section'},
      children: [
        Component.element(
          tag: 'div',
          attributes: {'class': 'site-shell hero-grid'},
          children: [
            Component.element(
              tag: 'div',
              attributes: {'class': 'hero-copy'},
              children: [
                Component.element(tag: 'p', attributes: {
                  'class': 'badge'
                }, children: [
                  Component.text('Hymnal for church and projector')
                ]),
                Component.element(tag: 'h1', children: [
                  Component.text(
                      'SDA Tuyimbe: Offline Hymns, Audio & Projector-Ready')
                ]),
                Component.element(tag: 'p', children: [
                  Component.text(
                      'Complete hymnal with audio, solfa notation and projector display — works offline on Windows.')
                ]),
                Component.element(
                  tag: 'div',
                  attributes: {'class': 'hero-cta'},
                  children: [
                    Component.element(tag: 'a', attributes: {
                      'class': 'button',
                      'href': 'javascript:void(0);',
                      'onclick': 'handleDownload(); return false;',
                      'role': 'button',
                      'style': 'cursor: pointer;'
                    }, children: [
                      Component.text('Download for Windows')
                    ]),
                    Component.element(
                        tag: 'span',
                        attributes: {'class': 'cta-badge'},
                        children: [Component.text('Offline-ready')]),
                    Component.element(tag: 'div', attributes: {
                      'id': 'download-note',
                      'style':
                          'display:none;margin-top:.6rem;padding:.6rem .9rem;border-radius:10px;background:rgba(59,130,246,0.06);border:1px solid rgba(59,130,246,0.12);color:#0f172a;font-weight:600;max-width:520px'
                    }, children: [
                      Component.text(
                          'If your browser warns that the file "could harm your device", this is expected for unsigned installers. Click '),
                      Component.element(
                          tag: 'strong', children: [Component.text('Keep')]),
                      Component.text(' or '),
                      Component.element(
                          tag: 'strong',
                          children: [Component.text('Keep anyway')]),
                      Component.text(
                          ' to save the file — the package comes from the developer listed on this page.'),
                    ]),
                    Component.element(tag: 'a', attributes: {
                      'class': 'link',
                      'href': '#install',
                      'style': 'margin-left:1rem'
                    }, children: [
                      Component.text('View Installation Guide')
                    ]),
                  ],
                ),
              ],
            ),
            Component.element(
              tag: 'div',
              children: [
                Component.element(
                    tag: 'div',
                    attributes: {'class': 'screenshot-card'},
                    children: [Component.text('App preview')]),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
