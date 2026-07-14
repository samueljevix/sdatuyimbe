const fs = require('fs');
const path = require('path');
const sharp = require('sharp');

const inputDir = path.join(__dirname, '..', 'web', 'assets', 'screenshots');
const outDir = path.join(inputDir, 'optimized');

if (!fs.existsSync(outDir)) fs.mkdirSync(outDir, { recursive: true });

const files = fs.readdirSync(inputDir).filter(f => /\.(png|jpg|jpeg)$/i.test(f));

(async () => {
  console.log('Found', files.length, 'images. Optimizing...');
  for (const file of files) {
    const input = path.join(inputDir, file);
    const name = path.parse(file).name;
    const outWebp = path.join(outDir, name + '.webp');
    try {
      await sharp(input)
        .resize({ width: 1600, withoutEnlargement: true })
        .webp({ quality: 80 })
        .toFile(outWebp);
      console.log('Optimized:', file, '→', path.relative(process.cwd(), outWebp));
    } catch (err) {
      console.error('Error optimizing', file, err);
    }
  }
  console.log('Optimization complete.');
})();
