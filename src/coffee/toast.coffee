###*
 * Toast
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{Component} = require 'mcore'

# 单例
_toast = null
_loadingArr = [0...12]

class Toast extends Component

    constructor: (@el = document.body, @virtualEl = null)->
        super @el, @virtualEl


    init: ->
        @render require('../tpl/toast.html'),
            show: false
            msg: ''
            loadingArr: _loadingArr

    show: (msg, type = 'toast')->
        @set 'msg', msg
        @set 'type', type
        @set 'show', true


    hide: ->
        @set 'show', false



Toast.loading =
    show: (msg = '数据加载中')->
        _toast = new Toast() if !_toast
        _toast.show msg, 'loading'

    hide: ->
        _toast.hide() if _toast


Toast.success =
    show: (msg)->
        _toast = new Toast() if !_toast
        _toast.show msg

    hide: ->
        _toast.hide() if _toast

module.exports = Toast
