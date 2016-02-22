###*
 *
 * 进度条
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{Component, Template, util} = require 'mcore'

class ProgressBar extends Component

    init: ->
        @render require('../tpl/progressBar.html')


    watch: ->
        @on 'change:value', (value)->
            @set 'progress', value if util.isNumber value


Template.components['progress-bar'] = ProgressBar

module.exports = ProgressBar
