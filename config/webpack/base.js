// config/webpack/base.js
// https://www.rubydoc.info/github/rails/webpacker
const { webpackConfig, merge } = require('@rails/webpacker')
const customConfig = require('./custom')

module.exports = merge(webpackConfig, customConfig)
