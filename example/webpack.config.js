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
            loader: "style!css!less"
        }, {
            test: /\/tpl\/.*(\.html)$/,
            loader: 'h2svd-loader'
        }]
    },
    externals: ['jquery']
};
