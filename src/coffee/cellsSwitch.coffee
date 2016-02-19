###*
 * 多选开关
 * @author vfasky <vfasky@gmail.com>
###
'use strict'

{Template} = require 'mcore'
CellsCheckbox = require './cellsCheckbox'

class CellsSwitch extends CellsCheckbox

    init: ->
        @render require('../tpl/cellsSwitch.html')


Template.components['cells-switch'] = CellsSwitch

module.exports = CellsSwitch
