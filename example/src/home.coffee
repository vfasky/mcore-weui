###*
 * 首页
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{View} = require 'mcoreapp'

class Home extends View
    run: ->
        @render require('../tpl/home.html'),
            list: [
                {
                    url: '#/button'
                    title: '按钮'
                    desc: '直接调用，没有封装'
                }
                {
                    url: '#/cell'
                    title: '列表'
                }
            ]


module.exports = Home
module.exports.viewName = 'home'