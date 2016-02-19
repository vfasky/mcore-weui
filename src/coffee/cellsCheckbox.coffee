###*
 *
 * # 复选框
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{Template, Component, util} = require 'mcore'


class CellsCheckbox extends Component

    init: ->
        @render require('../tpl/CellsCheckbox.html')

    watch: ->
        @on 'change:list', (list)=>
            return if false == util.isArray list
            @set 'list', list
        @on 'change:value', (value)=>
            return if false == util.isArray value
            @set 'value', value
        @on 'change:name', (name)=>
            @set 'name', name

    changeValue: (event, el, val)->
        value = @get 'value'
        if el.checked
            value.push val if (val not in value)
        else
            ix = value.indexOf val
            value.splice ix, 1 if ix > -1

        @set 'value', value
        @emitEvent 'change-value', [event, el, value]


Template.components['cells-checkbox'] = CellsCheckbox
