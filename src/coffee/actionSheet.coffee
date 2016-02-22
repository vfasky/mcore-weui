###*
 *
 * ActionSheet
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{Component, util} = require 'mcore'


class ActionSheet extends Component

    constructor: (@el = document.body, @virtualEl = null)->
        super @el, @virtualEl


    init: ->
        @render require('../tpl/actionSheet.html'),
            show: false
            list: []


    show: (list)->
        if util.isArray(list)
            @set 'list', list
        @set 'show', true


    hide: ->
        @set 'show', false


    clickMenu: (event, el, v)->
        if util.isFunction(v.callback)
            v.callback v, @


module.exports = ActionSheet
