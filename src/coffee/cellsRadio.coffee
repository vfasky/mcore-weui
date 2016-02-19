###*
 * # 单选列表
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{Template, Component, util} = require 'mcore'


class CellsRadio extends Component

    init: ->
        @render require('../tpl/cellsRadio.html')

    watch: ->
        @on 'change:list', (list)=>
            return if false == util.isArray list
            @set 'list', list
        @on 'change:value', (value)=>
            @set 'value', value
        @on 'change:name', (name)=>
            @set 'name', name

    changeValue: (event, el, value)->
        @set 'value', value
        @emitEvent 'change-value', arguments


Template.components['cells-radio'] = CellsRadio
