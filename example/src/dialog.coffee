###*
 *
 * dialog
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{View} = require 'mcoreapp'
weui = require 'mcore-weui'

class Dialog extends View

    run: ->
        @render require('../tpl/dialog.html')


    showAlert: ->
        weui.Dialog.alert 'hello'
        false

    showConfirm: ->
        weui.Dialog.confirm '你的选择是？', (ok)->
            weui.Dialog.alert ok and '你点了“确定”' or '你点了“取消”'


module.exports = Dialog
module.exports.viewName = 'dialog'
