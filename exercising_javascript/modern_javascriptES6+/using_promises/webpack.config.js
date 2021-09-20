const path = require("path")

module.exports = {
  entry: {
    index: './src/index.js',
    spaceship: './src/spaceship.js',
    spaceship_engine: './src/spaceship_engine.js',
  },

  output: {
    filename: '[name].bundle.js',
    path: path.resolve(__dirname, 'dist')
  },

  module: {
    rules: [
      {
        test: /\.js$/,
        use: ['babel-loader']
      }
    ]
  },

  watch: true,

  devServer: {
    static: {
        directory: path.join(__dirname, "dist"),
        watch: true,
    }
  }
}