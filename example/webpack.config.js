var webpack = require('webpack');

module.exports = {
    entry: {
        'demo': './src/index',
    },
    output: {
        path: __dirname + '/dist',
        filename: '[name].js',
        libraryTarget: 'umd'
    },
    resolve: {
        extensions: ['', '.coffee', '.js'],
        jquery: 'jQuery',
        alias: {
            'mcore-weui': __dirname + '/../src/coffee/index',
            'mcoreapp': __dirname + '/../node_modules/mcoreapp/dist/mcoreApp.js',
            'mcore': 'mcoreapp',
        }
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
    externals: {
        jquery: 'jQuery'
    },
    plugins: [
        new webpack.optimize.UglifyJsPlugin({
            compress: {
                warnings: false
            }
        })
    ]
};
