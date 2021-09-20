const path = require("path")
const planet_operations = require("./src/planet_operations")

module.exports = {
  entry: {
    index: './src/index.js',
    planet: './src/planet.js',
    planet_operations: './src/planet_operations.js'
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