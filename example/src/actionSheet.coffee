###*
 *
 * actionSheet
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{View} = require 'mcoreapp'
weui = require 'mcore-weui'

class ActionSheet extends View

    run: ->
        @render require('../tpl/actionSheet.html')

    showActionSheet: ->
        if !@_actionSheet
            @_actionSheet = new weui.ActionSheet @el

            @_actionSheet.show [
                {
                    title: 'test 0'
                    callback: (v)->
                        weui.Dialog.alert v.title
                }
                {
                    title: 'test 1'
                    callback: (v)->
                        weui.Dialog.alert v.title
                }
                {
                    title: 'test 2'
                    callback: (v)->
                        weui.Dialog.alert v.title
                }
            ]
        else
            @_actionSheet.show()
        false



module.exports = ActionSheet
module.exports.viewName = 'actionSheet'
