/**
 *
 * @date 2016-01-07 21:45:16
 * @author vfasky <vfasky@gmail.com>
 */
var webpack = require('webpack');

module.exports = {
    entry: {
        'mcore-weui': './src/coffee/index',
    },
    output: {
        path: __dirname + '/dist',
        filename: '[name].js',
        libraryTarget: 'umd'
    },
    resolve: {
        extensions: ['', '.coffee', '.js'],
        alias: {}
    },
    module: {
        loaders: [{
            test: /\.coffee$/,
            loader: "coffee-loader"
        }, {
            test: /\.less$/,
            loader: "style!css!autoprefixer!less"
        }, {
            test: /\/tpl\/.*(\.html)$/,
            loader: 'h2svd-loader'
        }]
    },
    externals: ['mcore', 'jquery']
};
