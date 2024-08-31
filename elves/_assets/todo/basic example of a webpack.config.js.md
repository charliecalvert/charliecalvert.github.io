## Copilot

Certainly! Here's a basic example of a webpack.config.js file that configures Webpack to load .js, .jsx, and .css files without using Babel:

```js
const path = require('path');

module.exports = {
  // Entry point of the application
  entry: './src/index.js',

  // Output configuration
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'bundle.js'
  },

  // Module rules for handling different file types
  module: {
    rules: [
      {
        // Rule for JavaScript and JSX files
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        use: {
          loader: 'esbuild-loader',
          options: {
            loader: 'jsx', // 'js' for .js files
            target: 'es2015'
          }
        }
      },
      {
        // Rule for CSS files
        test: /\.css$/,
        use: ['style-loader', 'css-loader']
      }
    ]
  },

  // Resolve extensions for import without specifying file extension
  resolve: {
    extensions: ['.js', '.jsx']
  },

  // Development server configuration
  devServer: {
    contentBase: './dist',
    hot: true
  }
};
```

This configuration uses esbuild-loader for JavaScript and JSX files, which is a faster alternative to Babel and doesn't require a separate configuration file. It compiles modern JavaScript syntax to a target version (in this case, ES2015). For CSS files, it uses style-loader and css-loader to bundle and inject styles into the DOM.
Remember to install the necessary packages before running Webpack:

npm install --save-dev webpack webpack-cli esbuild-loader style-loader css-loader

And you can build your project by running:

npx webpack --mode production

This setup should get you started with loading .js, .jsx, and .css files in your Webpack bundle without Babel. Keep in mind that if you're using features from newer JavaScript versions that aren't supported in your target browsers, you'll need to include a transpiler like Babel or adjust the target option in esbuild-loader.
