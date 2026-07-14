import 'package:jaspr/jaspr.dart';
import 'components/footer.dart';
import 'components/features_section.dart';
import 'components/faq_section.dart';
import 'components/header.dart';
import 'components/hero_section.dart';
import 'components/about_section.dart';
import 'components/installation_guide.dart';
import 'components/requirements_section.dart';
import 'components/screenshots_section.dart';
import 'components/support_section.dart';
import 'styles/theme.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return Component.fragment([
      Component.element(tag: 'style', children: [Component.text(appStyles)]),
      Component.element(tag: 'script', children: [
        Component.text(r"""
function handleDownload(){
  try{
    var fileId = '13kT76-pRTGUiTBf9_PjTO4FB8Za146gj';
    var downloadUrl = 'https://drive.google.com/uc?id=' + fileId + '&export=download';
    window.open(downloadUrl, '_blank');
    showDownloadNote();
  }catch(e){
    console.error('Download error:', e);
    alert('Could not open download link');
  }
}

function showDownloadNote(){
  try{
    var el = document.getElementById('download-note');
    if(!el) return;
    el.style.display = 'block';
    el.style.transition = 'opacity 300ms ease-in-out';
    el.style.opacity = '0';
    setTimeout(function(){ el.style.opacity = '1'; }, 10);
    el.scrollIntoView({behavior: 'smooth', block: 'center'});
  }catch(e){/* ignore */}
}
""")
      ]),
      const Header(),
      const AboutSection(),
      Component.element(tag: 'main', children: [
        const HeroSection(),
        const FeaturesSection(),
        const SupportSection(),
        const InstallationGuide(),
        const RequirementsSection(),
        const ScreenshotsSection(),
        const FaqSection(),
      ]),
      const Footer(),
    ]);
  }
}
