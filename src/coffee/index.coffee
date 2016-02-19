###*
 * # mcore weui
 * @author vfasky <vfasky@gmail.com>
###

'use strict'

require '../style/weui.less'

{Template} = require 'mcore'

module.exports =
    Cells: require './cells'
    CellsRadio: require './cellsRadio'
    CellsCheckbox: require './cellsCheckbox'
    CellsSwitch: require './cellsSwitch'
