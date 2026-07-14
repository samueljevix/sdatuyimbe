const String appStyles = '''
:root {
  color-scheme: light;
  --bg: #eef4ff;
  --surface: #ffffff;
  --surface-strong: #eaf2ff;
  --primary: #1d4ed8;
  --primary-strong: #2563eb;
  --primary-soft: #eff6ff;
  --text: #0f172a;
  --muted: #475569;
  --border: rgba(29, 78, 216, 0.12);
}

* {
  box-sizing: border-box;
}

html, body {
  margin: 0;
  min-height: 100%;
  font-family: Inter, system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
  background: linear-gradient(180deg, #eef4ff 0%, #f8fbff 45%, #ffffff 100%);
  color: var(--text);
}

body {
  line-height: 1.6;
  background-image: radial-gradient(circle at top left, rgba(59, 130, 246, 0.08), transparent 28%),
                    radial-gradient(circle at bottom right, rgba(37, 99, 235, 0.06), transparent 24%);
}

a {
  color: inherit;
  text-decoration: none;
}

button, .button {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  border: none;
  background: var(--primary);
  color: white;
  padding: 1rem 1.6rem;
  border-radius: 999px;
  cursor: pointer;
  font-weight: 600;
}

button:hover, .button:hover {
  background: #1e40af;
}

header {
  position: sticky;
  top: 0;
  z-index: 20;
  background: rgba(237, 246, 255, 0.92);
  backdrop-filter: blur(20px);
  border-bottom: 1px solid rgba(37, 99, 235, 0.12);
}

.site-shell {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 1.5rem;
}

.site-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  gap: 1rem;
  padding: 1rem 0;
}

.brand {
  display: flex;
  align-items: center;
  gap: 0.85rem;
}

.app-logo {
  width: 44px;
  height: 44px;
  border-radius: 14px;
  object-fit: cover;
  background: var(--primary-soft);
  padding: 0.2rem;
}

.footer-logo {
  width: 56px;
  height: 56px;
  border-radius: 12px;
  object-fit: cover;
  background: var(--primary-soft);
  padding: 0.25rem;
  box-shadow: 0 6px 18px rgba(2,6,23,0.15);
}

.footer-left {
  display: flex;
  gap: 1rem;
  align-items: center;
}

.footer-meta p { margin: 0; color: rgba(255,255,255,0.88); }

.nav-links {
  display: flex;
  gap: 1.25rem;
  flex-wrap: wrap;
}

.section {
  padding: 5rem 0;
}

.section-alt {
  background: var(--surface);
}

.hero-grid {
  display: grid;
  gap: 2rem;
  align-items: center;
  grid-template-columns: minmax(0, 1.2fr) minmax(280px, 1fr);
}

.hero-copy h1 {
  font-size: clamp(2.5rem, 4vw, 4rem);
  margin: 0;
  line-height: 1.02;
}

.hero-copy h1 {
  color: var(--primary);
  font-weight: 800;
}

.hero-cta {
  display: flex;
  align-items: center;
  gap: 0.8rem;
  margin-top: 1.2rem;
}

.cta-badge {
  background: rgba(34, 197, 94, 0.12);
  color: #065f46;
  padding: 0.35rem 0.6rem;
  border-radius: 999px;
  font-weight: 700;
  font-size: 0.85rem;
}

#download-note, #download-note[style] {
  display: none;
}

#download-note.visible {
  display: block;
}

.hero-copy p {
  max-width: 620px;
  margin: 1.5rem 0 2rem;
  color: var(--muted);
}

.badge {
  display: inline-flex;
  padding: 0.55rem 0.95rem;
  border-radius: 999px;
  background: var(--primary-soft);
  color: var(--primary);
  font-weight: 700;
  font-size: 0.95rem;
}

.cards {
  display: grid;
  gap: 1.5rem;
  grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
}

.about-section {
  padding: 3.5rem 0;
}

.about-container {
  display: block;
}

.about-grid {
  display: grid;
  gap: 1.25rem;
  grid-template-columns: repeat(2, 1fr);
  margin-top: 1.25rem;
}

.about-card {
  background: var(--surface);
  border: 1px solid var(--border);
  border-radius: 18px;
  padding: 1.25rem;
}

.about-card h3 {
  margin-top: 0;
}

.subtitle {
  margin: 0.6rem 0 0;
  color: var(--muted);
}

.section-header h2 {
  margin: 0 0 0.4rem;
}

.support-grid {
  display: grid;
  gap: 1rem;
  grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
  margin-top: 1rem;
}

.support-card {
  background: var(--surface);
  border: 1px solid var(--border);
  border-radius: 14px;
  padding: 1rem;
}

.card {
  background: var(--surface);
  border: 1px solid var(--border);
  border-radius: 24px;
  padding: 1.75rem;
  min-height: 210px;
}

.card-title {
  margin: 0 0 1rem;
  font-size: 1.1rem;
  font-weight: 700;
}

.card-text {
  margin: 0;
  color: var(--muted);
}

.install-guide {
  display: grid;
  gap: 1.5rem;
  grid-template-columns: 1fr 1fr;
}

.guide-grid {
  display: grid;
  gap: 1.5rem;
  grid-template-columns: 1fr 1fr;
}

.guide-panel {
  background: var(--surface);
  border: 1px solid var(--border);
  border-radius: 24px;
  padding: 1.5rem;
  box-shadow: 0 20px 50px rgba(15, 23, 42, 0.05);
}

.guide-panel h3 {
  margin-top: 0;
}

.guide-steps {
  margin: 1rem 0 0;
  padding-left: 1.1rem;
}

.guide-steps li {
  margin-bottom: 0.9rem;
  line-height: 1.65;
}

.guide-tip {
  margin-top: 1.25rem;
  padding: 1rem 1.1rem;
  border-radius: 18px;
  background: rgba(14, 165, 233, 0.08);
  color: #0c4a6e;
  border: 1px solid rgba(14, 165, 233, 0.15);
}

.animate-fade-in {
  animation: fadeIn 0.45s ease both;
}

@keyframes fadeIn {
  from { opacity: 0; transform: translateY(14px); }
  to { opacity: 1; transform: translateY(0); }
}

.step-list {
  list-style: none;
  padding: 0;
  margin: 0;
  display: grid;
  gap: 1rem;
}

.step {
  display: grid;
  grid-template-columns: auto 1fr;
  gap: 1rem;
  background: var(--primary-soft);
  border-radius: 20px;
  padding: 1rem;
}

.step-index {
  width: 2.2rem;
  height: 2.2rem;
  display: grid;
  place-items: center;
  border-radius: 50%;
  background: var(--primary);
  color: white;
  font-weight: 700;
}

.screenshot-grid {
  display: grid;
  gap: 1.5rem;
  grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
}

.screenshot-card {
  min-height: 220px;
  border-radius: 24px;
  background: linear-gradient(180deg, #e7f0ff 0%, #f8fbff 100%);
  border: 1px solid var(--border);
  display: grid;
  place-items: center;
  color: var(--primary);
  font-weight: 700;
}

.faq-list {
  display: grid;
  gap: 1rem;
}

.faq-item {
  background: var(--surface);
  border: 1px solid var(--border);
  border-radius: 20px;
  padding: 1.5rem;
}

.faq-question {
  margin: 0 0 0.75rem;
  font-weight: 700;
}

.faq-answer {
  margin: 0;
  color: var(--muted);
}

footer {
  background: #0f172a;
  color: white;
}

footer .site-shell {
  display: flex;
  align-items: center;
  justify-content: space-between;
  flex-wrap: wrap;
  gap: 1rem;
  padding: 2rem 0;
}

@media (max-width: 860px) {
  .hero-grid,
  .install-guide {
    grid-template-columns: 1fr;
  }
  .site-header {
    flex-direction: column;
    align-items: flex-start;
  }
}
''';
