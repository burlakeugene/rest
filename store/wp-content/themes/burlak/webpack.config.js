const path = require('path');
const { CleanWebpackPlugin } = require('clean-webpack-plugin');
const ExtractTextPlugin = require('extract-text-webpack-plugin');
const CopyWebpackPlugin = require('copy-webpack-plugin');
const autoprefixer = require('autoprefixer');

module.exports = {
  entry: ['./src/index.js', './src/main.scss'],
  output: {
    filename: './js/bundle.js',
    path: path.resolve(__dirname, 'dist')
  },
  devtool: 'source-map',
  module: {
    rules: [
      {
        test: /\.js$/,
        use: [
          {
            loader: 'babel-loader',
            options: {
              presets: ['@babel/preset-env'],
              plugins: [
                require('@babel/plugin-proposal-optional-chaining'),
                require('@babel/plugin-syntax-dynamic-import'),
                require('@babel/plugin-proposal-object-rest-spread'),
                [
                  require('@babel/plugin-proposal-decorators'),
                  { legacy: true },
                ],
                [
                  require('@babel/plugin-proposal-class-properties'),
                  { loose: true },
                ],
              ],
            },
          },
        ],
      },
      {
        test: /\.(sass|scss|css)$/,
        include: path.resolve(__dirname, 'src'),
        use: ExtractTextPlugin.extract({
          use: [
            {
              loader: 'css-loader',
              options: {
                sourceMap: true,
                url: false
              }
            },
            {
              loader: 'resolve-url-loader'
            },
            {
              loader: 'postcss-loader',
              options: {
                plugins: [autoprefixer()],
                sourceMap: true
              }
            },
            {
              loader: 'sass-loader',
              options: {
                sourceMap: true
              }
            }
          ]
        })
      },
      {
        test: /\.css$/,
        use: ['style-loader', 'css-loader']
      },
      {
        test: /\.(png|jpg|gif)$/,
        use: [
          {
            loader: 'file-loader',
            options: { name: 'images/[name].[ext]' }
          }
        ]
      },
      {
        test: /\.(eot|svg|ttf|woff|woff2)$/,
        loader: 'file?name=public/fonts/[name].[ext]'
      }
    ]
  },
  plugins: [
    // new CleanWebpackPlugin(),
    new ExtractTextPlugin({
      filename: './css/main.css',
      allChunks: true
    }),
    new CopyWebpackPlugin([
      {
        from: './src/fonts',
        to: './fonts'
      },
      {
        from: './src/images',
        to: './images'
      }
    ])
  ]
};
