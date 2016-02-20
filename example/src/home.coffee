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
                    url: '#/cells-radio'
                    title: '单选列表'
                }
                {
                    url: '#/cells-checkbox'
                    title: '复选列表'
                }
                {
                    url: '#/cells-switch'
                    title: '多选开关'
                }
                {
                    url: '#/validator'
                    title: '表单验证'
                }
                {
                    url: '#/toast'
                    title: 'Toast'
                    desc: '成功提示，及loading'
                }
                {
                    url: '#/dialog'
                    title: 'Dialog'
                    desc: 'alert，confirm'
                }
            ]


module.exports = Home
module.exports.viewName = 'home'
