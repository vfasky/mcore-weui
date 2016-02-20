###*
 *
 * Dialog
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{Component} = require 'mcore'

_dialog = null

class Dialog extends Component

    constructor: (@el = document.body, @virtualEl = null)->
        super @el, @virtualEl


    init: ->
        @render require('../tpl/dialog.html'),
            type: 'alert'
            show: false


    show: (content, @callback, title = '提示信息', type = 'alert')->
        @set 'title', title
        @set 'type', type
        @set 'content', content
        @set 'show', true
        this


    isShow: -> @get('show')


    close: (event, el, isOk)->
        isOk = isOk == true and true or false
        @set 'show', false, => @callback isOk


Dialog.alert = (content, callback, title)->
    _dialog = new Dialog() if !_dialog
    callback or= ->

    return false if _dialog.isShow()

    _dialog.show content, callback, title


Dialog.confirm = (content, callback, title = '请确认')->
    _dialog = new Dialog() if !_dialog
    callback or= ->

    return false if _dialog.isShow()

    _dialog.show content, callback, title, 'confirm'


module.exports = Dialog
