import 'package:jaspr/jaspr.dart';

class InstallationGuide extends StatelessComponent {
  const InstallationGuide({super.key});

  @override
  Component build(BuildContext context) {
    return Component.element(
      tag: 'section',
      attributes: {'id': 'install', 'class': 'section'},
      children: [
        Component.element(
          tag: 'div',
          attributes: {'class': 'site-shell'},
          children: [
            Component.element(tag: 'h2', children: [
              Component.text('How to install SDA Tuyimbe Book (.msix)')
            ]),
            Component.element(tag: 'p', children: [
              Component.text(
                  'If you see "Publisher not verified", follow these safe installation steps to run the app on Windows.')
            ]),
            Component.element(
              tag: 'div',
              attributes: {'class': 'install-guide'},
              children: [
                Component.element(tag: 'div', children: [
                  Component.element(tag: 'ul', attributes: {
                    'class': 'step-list'
                  }, children: [
                    _step(1, 'Download the .msix file from the button below.'),
                    _step(2,
                        'Open the downloaded file from Downloads or the browser prompt.'),
                    _step(3,
                        'If Windows shows "Publisher not verified", click "More info."'),
                    _step(
                        4, 'Click "Run anyway" to continue the installation.'),
                    _step(5,
                        'Open the app from the Start menu after installation finishes.'),
                  ]),
                ]),
                Component.element(tag: 'div', attributes: {
                  'class': 'card'
                }, children: [
                  Component.element(
                      tag: 'h3',
                      attributes: {'class': 'card-title'},
                      children: [Component.text('Download & install')]),
                  Component.element(tag: 'p', attributes: {
                    'class': 'card-text'
                  }, children: [
                    Component.text(
                        'Use the official SDA Tuyimbe PC package for hymn lyrics, audio, solfa sheets, and projector display.')
                  ]),
                  Component.element(tag: 'div', children: [
                    Component.element(tag: 'a', attributes: {
                      'class': 'button',
                      'href': 'javascript:void(0);',
                      'onclick': 'handleDownload(); return false;',
                      'role': 'button',
                      'style': 'cursor: pointer;'
                    }, children: [
                      Component.text('Download SDA_Tuyimbe_Book.msix')
                    ]),
                  ]),
                ]),
                Component.element(tag: 'div', attributes: {
                  'class': 'guide-grid'
                }, children: [
                  _buildDevModeGuide(),
                  _buildCertGuide(),
                ]),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Component _step(int index, String text) {
    return Component.element(
      tag: 'li',
      attributes: {'class': 'step'},
      children: [
        Component.element(
            tag: 'span',
            attributes: {'class': 'step-index'},
            children: [Component.text('$index')]),
        Component.element(tag: 'span', children: [Component.text(text)]),
      ],
    );
  }

  Component _buildDevModeGuide() {
    return Component.element(
      tag: 'div',
      attributes: {'class': 'guide-panel animate-fade-in'},
      children: [
        Component.element(tag: 'h3', children: [
          Component.text('Option 1: Enable Windows Developer Mode')
        ]),
        Component.element(tag: 'p', children: [
          Component.text(
              'Turning on Developer Mode allows Windows to install local testing packages (.msix) without certificate restrictions.')
        ]),
        Component.element(tag: 'ol', attributes: {
          'class': 'guide-steps'
        }, children: [
          Component.element(tag: 'li', children: [
            Component.text('Press the '),
            Component.element(
                tag: 'strong', children: [Component.text('Windows Key')]),
            Component.text(' on your keyboard and search for '),
            Component.element(
                tag: 'strong',
                children: [Component.text('Developer settings')]),
            Component.text('.')
          ]),
          Component.element(tag: 'li', children: [
            Component.text('Under Developer Mode, turn the toggle to '),
            Component.element(tag: 'strong', children: [Component.text('On')]),
            Component.text('.')
          ]),
          Component.element(tag: 'li', children: [
            Component.text('Locate the downloaded '),
            Component.element(
                tag: 'strong',
                children: [Component.text('sda_tuyimbe_book.msix')]),
            Component.text(' file on your computer.')
          ]),
          Component.element(tag: 'li', children: [
            Component.text('Double-click it, and click the '),
            Component.element(
                tag: 'strong', children: [Component.text('Install')]),
            Component.text(' button to complete installation.')
          ]),
        ]),
        Component.element(tag: 'div', attributes: {
          'class': 'guide-tip'
        }, children: [
          Component.element(tag: 'strong', children: [Component.text('Tip: ')]),
          Component.text(
              'This is the quickest option and doesn\'t require modifying certificate stores manually.')
        ]),
      ],
    );
  }

  Component _buildCertGuide() {
    return Component.element(
      tag: 'div',
      attributes: {'class': 'guide-panel animate-fade-in'},
      children: [
        Component.element(tag: 'h3', children: [
          Component.text('Option 2: Manually Trust the Self-Signed Certificate')
        ]),
        Component.element(tag: 'p', children: [
          Component.text(
              'If you don\'t want to turn on Developer Mode, you can tell Windows to trust the application\'s certificate.')
        ]),
        Component.element(tag: 'ol', attributes: {
          'class': 'guide-steps'
        }, children: [
          Component.element(tag: 'li', children: [
            Component.text('Right-click the downloaded '),
            Component.element(
                tag: 'strong',
                children: [Component.text('sda_tuyimbe_book.msix')]),
            Component.text(' file and select '),
            Component.element(
                tag: 'strong', children: [Component.text('Properties')]),
            Component.text('.')
          ]),
          Component.element(tag: 'li', children: [
            Component.text('Go to the '),
            Component.element(
                tag: 'strong',
                children: [Component.text('Digital Signatures')]),
            Component.text(' tab, select the signature listed, and click '),
            Component.element(
                tag: 'strong', children: [Component.text('Details')]),
            Component.text('.')
          ]),
          Component.element(tag: 'li', children: [
            Component.text('Click '),
            Component.element(
                tag: 'strong', children: [Component.text('View Certificate')]),
            Component.text(', then click '),
            Component.element(
                tag: 'strong',
                children: [Component.text('Install Certificate...')])
          ]),
          Component.element(tag: 'li', children: [
            Component.text('Select '),
            Component.element(
                tag: 'strong', children: [Component.text('Local Machine')]),
            Component.text(
                ' and click Next. (Approve the administrator popup if requested).')
          ]),
          Component.element(tag: 'li', children: [
            Component.text('Choose '),
            Component.element(tag: 'strong', children: [
              Component.text('Place all certificates in the following store')
            ]),
            Component.text(', click '),
            Component.element(
                tag: 'strong', children: [Component.text('Browse')]),
            Component.text(', select '),
            Component.element(tag: 'strong', children: [
              Component.text('Trusted Root Certification Authorities')
            ]),
            Component.text(', and click OK.')
          ]),
          Component.element(tag: 'li', children: [
            Component.text('Click '),
            Component.element(
                tag: 'strong', children: [Component.text('Next')]),
            Component.text(', then click '),
            Component.element(
                tag: 'strong', children: [Component.text('Finish')]),
            Component.text('.')
          ]),
          Component.element(tag: 'li', children: [
            Component.text('Double-click the '),
            Component.element(
                tag: 'strong', children: [Component.text('.msix')]),
            Component.text(
                ' package, and the Install button will now be active.')
          ]),
        ]),
      ],
    );
  }
}
