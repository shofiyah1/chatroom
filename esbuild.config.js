const esbuild = require('esbuild');

esbuild.build({
  entryPoints: ['app/javascript/packs/application.js'],
  bundle: true,
  outdir: 'public/packs',  // Output ke public/packs, bukan di assets
  loader: {
    '.js': 'jsx',   // Jika perlu JSX
    '.scss': 'css', // Jika menggunakan SCSS
  },
  external: ['@rails/ujs', 'turbolinks', '@rails/activestorage', 'channels'], // Jangan masukkan dependensi Rails ke bundel
}).catch(() => process.exit(1));
