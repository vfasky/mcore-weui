###*
 * # 列表
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{Template, Component, util} = require 'mcore'

class Cells extends Component

    init: ->
        @render require('../tpl/cell.html')

    watch: ->
        @on 'change:list', (list)=>
            return if false == util.isArray list
            @set 'list', list

Template.components['cells'] = Cells
