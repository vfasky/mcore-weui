###*
 * 按钮
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{View} = require 'mcoreapp'

class Button extends View

    run: ->
        @render require('../tpl/button.html')


module.exports = Button
module.exports.viewName = 'button'
