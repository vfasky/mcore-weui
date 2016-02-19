###*
 *
 * tast
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{View} = require 'mcoreapp'
weui = require 'mcore-weui'

class Toast extends View

    run: ->
        @render require('../tpl/toast.html')


    showSuccess: ->
        weui.Toast.success.show '完成'
        false

    showLoading: ->
        weui.Toast.loading.show()


module.exports = Toast
module.exports.viewName = 'toast'
