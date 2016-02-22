###*
 *
 * progress
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{View} = require 'mcoreapp'

class ProgressBar extends View

    init: ->
        @time = setInterval =>
            value = parseInt @get 'value'
            if value >= 100
                value = 0
            else
                value += 5

            @set 'value', value
        , 100

    run: ->
        @render require('../tpl/progressBar.html'),
            value: 0

    destroy: ->
        clearInterval @time
        super()



module.exports = ProgressBar
module.exports.viewName = 'progressBar'
